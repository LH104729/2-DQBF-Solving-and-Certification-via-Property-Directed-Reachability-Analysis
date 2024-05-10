#include "algorithm.hpp"

#include <fstream>
#include <iostream>
#include <ranges>
#include <regex>
#include <set>

#include "utils.hpp"

// Transform 2DQBF to a finite transition system
Algorithm::Algorithm(DQBF& p, AVR_Wrapper& avr) : avr(avr), p(p), r(p.ctx), r_next(p.ctx), initial(p.ctx), transition(p.ctx), property(p.ctx), ctx(p.ctx) {
    max_dep_size = std::max(p.e_vars[0].second.size(), p.e_vars[1].second.size());
    register_size = 4 + p.u_vars.size() + 2 + max_dep_size;

    r = ctx.bv_const(".R", register_size);
    r_next = ctx.bv_const(".R$next", register_size);
    z3::expr_vector tmp(p.ctx);
    z3::expr_vector tmp_2(p.ctx);

    // Register
    // -----------------------------------------------------------------------------------
    // | inited | reached_neg | k | y_k |     x     | target k | target y_k | target z_k |
    // -----------------------------------------------------------------------------------
    
    // Map register names to their index
    idx_lookup["init"] = 0;
    idx_lookup["flag"] = 1;
    idx_lookup["k"] = 2;
    idx_lookup["y_k"] = 3;
    for (int i = 0; i < p.u_vars_str.size(); i++) {
        idx_lookup[p.u_vars_str[i]] = 4 + i;
    }
    idx_lookup["target k"] = 4 + p.u_vars.size();
    idx_lookup["target y_k"] = 4 + p.u_vars.size() + 1;
    idx_lookup["target z_k"] = 4 + p.u_vars.size() + 2;

    // Precalculations
    std::set<std::string> x(p.u_vars_str.begin(), p.u_vars_str.end());
    std::set<std::string> z0(p.e_vars_str[0].second.begin(), p.e_vars_str[0].second.end());
    std::set<std::string> z1(p.e_vars_str[1].second.begin(), p.e_vars_str[1].second.end());
    std::set<std::string> z0_intersect_z1;
    std::set_intersection(z0.begin(), z0.end(), z1.begin(), z1.end(), std::inserter(z0_intersect_z1, z0_intersect_z1.end()));
    std::set<std::string> z0_minus_z1;
    std::set_difference(z0.begin(), z0.end(), z0_intersect_z1.begin(), z0_intersect_z1.end(), std::inserter(z0_minus_z1, z0_minus_z1.end()));
    std::set<std::string> z1_minus_z0;
    std::set_difference(z1.begin(), z1.end(), z0_intersect_z1.begin(), z0_intersect_z1.end(), std::inserter(z1_minus_z0, z1_minus_z0.end()));

    // Substitution map for the implication graph
    // k = 0 -> k' = 1                        k = 1 -> k' = 0
    // /----- z_0 -----\                      /----- z_0 -----\                
    //         /----- z_1 -----\                      /----- z_1 -----\        
    // r                                      r                                
    // ---------------------------------      ---------------------------------
    // |   v   |       |       |       |      |       |       |   v   |       |
    // ---------------------------------      ---------------------------------
    // r_next      ||                         r_next      ||                   
    // ---------------------------------      ---------------------------------
    // |       |   v   |   v   |   v   |      |   v   |   v   |       |   v   |
    // ---------------------------------      ---------------------------------
    z3::expr_vector dest_0_1(p.ctx);  // reg is y0, reg_next is y1
    z3::expr_vector dest_1_0(p.ctx);  // reg is y1, reg_next is y0

    dest_0_1.push_back(bv_at(r, idx_lookup["y_k"]));
    dest_0_1.push_back(!bv_at(r_next, idx_lookup["y_k"]));

    dest_1_0.push_back(!bv_at(r_next, idx_lookup["y_k"]));
    dest_1_0.push_back(bv_at(r, idx_lookup["y_k"]));
    for (auto i : p.u_vars_str) {
        if (z0_minus_z1.find(i) != z0_minus_z1.end()) {
            dest_0_1.push_back(bv_at(r, idx_lookup[i]));
        } else {
            dest_0_1.push_back(bv_at(r_next, idx_lookup[i]));
        }
        if (z1_minus_z0.find(i) != z1_minus_z0.end()) {
            dest_1_0.push_back(bv_at(r, idx_lookup[i]));
        } else {
            dest_1_0.push_back(bv_at(r_next, idx_lookup[i]));
        }
    }
    
    // Using phi as a function
    z3::sort_vector s_v(p.ctx);
    for (int i = 0; i < p.var_cnt; i++) {
        s_v.push_back(ctx.bool_sort());
    }
    z3::func_decl phi = ctx.function("phi", s_v, ctx.bool_sort());

    // Handy functions
    auto r_eq = [&](int i, int j) { return r.extract(i, i) == r.extract(j, j); };
    auto r_next_eq = [&](int i, int j) { return r_next.extract(i, i) == r_next.extract(j, j); };
    auto r_eq_r_next = [&](int high, int low) { return r.extract(high, low) == r_next.extract(high, low); };

    // Initial
    initial = (r.extract(register_size - 1, 0) == ctx.bv_val(0, register_size));

    // Transition
    z3::expr_vector transition_vector(ctx);
    // Initial transition
    // Transition from 10...0 to a state where the init and flag bit are unset, (k, target k, z_k) and (y_k, target y_k, target z_k) are the same
    {
        tmp.push_back(!bv_at(r, idx_lookup["init"]));
        tmp.push_back(bv_at(r_next, idx_lookup["init"]));                      // Unset the init bit
        tmp.push_back(!bv_at(r_next, idx_lookup["flag"]));                      // Flag is not set
        tmp.push_back(r_next_eq(idx_lookup["k"], idx_lookup["target k"]));      // k and target k are the same
        tmp.push_back(r_next_eq(idx_lookup["y_k"], idx_lookup["target y_k"]));  // y_k and target y_k are the same
        // Target z_k == z_k \subseteq x
        {
            int i = 0;
            for (auto& v : p.e_vars_str[0].second) {
                tmp_2.push_back(r_next_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                i++;
            }
            tmp.push_back(z3::implies(!bv_at(r_next, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
            i = 0;
            for (auto& v : p.e_vars_str[1].second) {
                tmp_2.push_back(r_next_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                i++;
            }
            tmp.push_back(z3::implies(bv_at(r_next, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
        }
        transition_vector.push_back(z3::mk_and(tmp));
        tmp.resize(0);
    }

    // Setting the flag bit if we reached the negation of target
    // Transition from 00* where (k, target k, z_k) and (y_k, !target y_k, target z_k) are the same to 01*
    {
        tmp.push_back(bv_at(r, idx_lookup["init"]));                       // Init bit is not set
        tmp.push_back(!bv_at(r, idx_lookup["flag"]));                       // Flag bit is not set
        tmp.push_back(r_eq(idx_lookup["k"], idx_lookup["target k"]));       // k and target_k are the same
        tmp.push_back(!r_eq(idx_lookup["y_k"], idx_lookup["target y_k"]));  // y_k and target_y_k are not the same
        // Target z_k == z_k \subseteq x
        // z_k \subseteq x == z_k' \subseteq x'
        {
            int i = 0;
            for (auto& v : p.e_vars_str[0].second) {
                tmp_2.push_back(r_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                tmp_2.push_back(r_eq_r_next(idx_lookup[v], idx_lookup[v]));
                i++;
            }
            tmp.push_back(z3::implies(!bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
            i = 0;
            for (auto& v : p.e_vars_str[1].second) {
                tmp_2.push_back(r_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                tmp_2.push_back(r_eq_r_next(idx_lookup[v], idx_lookup[v]));
                i++;
            }
            tmp.push_back(z3::implies(bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
        }
        tmp.push_back(bv_at(r_next, idx_lookup["init"]));                      // Init bit is not set
        tmp.push_back(bv_at(r_next, idx_lookup["flag"]));                       // Flag bit is set
        tmp.push_back(r_eq_r_next(idx_lookup["y_k"], idx_lookup["k"]));         // k and y_k are unchanged
        tmp.push_back(r_eq_r_next(register_size - 1, idx_lookup["target k"]));  // Fixing target bits
        transition_vector.push_back(z3::mk_and(tmp));
        tmp.resize(0);
    }

    // Change unrelated variables
    // (k, y_k, z_k) == (k', y_k', z_k')
    {
        tmp.push_back(bv_at(r, idx_lookup["init"]));  // Init bit is not set
        // z_k \subseteq x == z_k' \subseteq x'
        {
            for (auto& v : p.e_vars_str[0].second) {
                tmp_2.push_back(r_eq_r_next(idx_lookup[v], idx_lookup[v]));
            }
            tmp.push_back(z3::implies(!bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
            for (auto& v : p.e_vars_str[1].second) {
                tmp_2.push_back(r_eq_r_next(idx_lookup[v], idx_lookup[v]));
            }
            tmp.push_back(z3::implies(bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
        }
        tmp.push_back(r_eq_r_next(idx_lookup["y_k"], 0));                       // Init, Flag, k, y_k are unchanged
        tmp.push_back(r_eq_r_next(register_size - 1, idx_lookup["target k"]));  // Fixing target bits
        transition_vector.push_back(z3::mk_and(tmp));
        tmp.resize(0);
    }

    // Stepping
    {
        tmp.push_back(bv_at(r, idx_lookup["init"]));  // Init bit is not set
        tmp.push_back(bv_at(r_next, idx_lookup["init"]));
        tmp.push_back(bv_at(r, idx_lookup["flag"]) == bv_at(r_next, idx_lookup["flag"]));
        tmp.push_back(bv_at(r, idx_lookup["k"]) == !bv_at(r_next, idx_lookup["k"]));  // k is different
        // Intersection stays the same
        {
            for (auto v : z0_intersect_z1) {
                tmp.push_back(r_eq_r_next(idx_lookup[v], idx_lookup[v]));
            }
        }
        // Follows the transition of the implication graph
        {
            tmp.push_back(z3::implies(!bv_at(r, idx_lookup["k"]), !phi(dest_0_1)));
            tmp.push_back(z3::implies(bv_at(r, idx_lookup["k"]), !phi(dest_1_0)));
        }
        tmp.push_back(r_eq_r_next(register_size - 1, idx_lookup["target k"]));  // Fixing target bits
        transition_vector.push_back(z3::mk_and(tmp));
        tmp.resize(0);
    }

    transition = z3::mk_or(transition_vector).simplify();

    // Property
    z3::expr_vector property_vector(p.ctx);
    {
        property_vector.push_back(bv_at(r, idx_lookup["init"]));                       // Init bit is not set
        property_vector.push_back(bv_at(r, idx_lookup["flag"]));                        // Flag bit is set
        property_vector.push_back(r_eq(idx_lookup["k"], idx_lookup["target k"]));       // k and target_k are the same
        property_vector.push_back(r_eq(idx_lookup["y_k"], idx_lookup["target y_k"]));   // y_k and target_y_k are the same
        // Target z_k must be the same as z_k \subseteq x
        {
            int i = 0;
            for (auto& v : p.e_vars_str[0].second) {
                tmp_2.push_back(r_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                i++;
            }
            property_vector.push_back(z3::implies(!bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
            i = 0;
            for (auto& v : p.e_vars_str[1].second) {
                tmp_2.push_back(r_eq(idx_lookup["target z_k"] + i, idx_lookup[v]));
                i++;
            }
            property_vector.push_back(z3::implies(bv_at(r, idx_lookup["k"]), z3::mk_and(tmp_2)));
            tmp_2.resize(0);
        }
    }

    property = !z3::mk_and(property_vector).simplify();
}

// Print the transition system and the property in SMT2 format
void Algorithm::print_to_file(std::string path) {
    std::ostringstream output_str;

    output_str << "; state variables\n";
    output_str << "(declare-fun .R () (_ BitVec " << register_size << "))\n";
    output_str << "(declare-fun .R$next () (_ BitVec " << register_size << "))\n";
    output_str << "(define-fun ..R () (_ BitVec " << register_size << ") (! .R :next .R$next))\n\n";

    output_str << "; 2DQBF phi\n";
    output_str << "(define-fun phi (\n";
    for (auto& e : p.e_vars) {
        output_str << "(" << e.first << " Bool)\n";
    }
    for (auto& u : p.u_vars) {
        output_str << "(" << u << " Bool)\n";
    }
    output_str << ") Bool\n";
    output_str << p.phi;
    output_str << ")\n\n";

    output_str << "; initial state\n";
    output_str << "(define-fun .init () Bool (!\n";
    output_str << initial << "\n";
    output_str << ":init true))\n\n";

    output_str << "; transition relation\n";
    output_str << "(define-fun .trans () Bool (!\n";
    output_str << transition << "\n";
    output_str << " :trans true))\n\n";

    output_str << "; property\n";
    output_str << "(define-fun .prop () Bool (!\n";
    output_str << property << "\n";
    output_str << " :invar-property 0))\n";
    
    std::ofstream output(path);
    if (!output.is_open()) {
        std::cout << "Error: Cannot open file " << path << std::endl;
        exit(-1);
    }
    output << output_str.str();
    output.close();
}

// Extract inductive invariant from the SMT2 file
z3::expr Algorithm::extract_S(std::string inv_smt2) {
    std::ifstream inv_file(inv_smt2);
    if (!inv_file.is_open()) {
        std::cout << "Error: Cannot open file " << inv_smt2 << std::endl;
        exit(-1);
    }
    std::string inv_prop;
    getline(inv_file, inv_prop);
    getline(inv_file, inv_prop);

    inv_prop = std::string((std::istreambuf_iterator<char>(inv_file)), std::istreambuf_iterator<char>());
    inv_prop = inv_prop.substr(0, inv_prop.find("; inductive invariant"));
    inv_prop = std::regex_replace(inv_prop, std::regex("\tproperty\n"), "");
    inv_prop = std::regex_replace(inv_prop, std::regex(" :invar-property 1"), "");

    // Extract inductive invariant as a function of REG
    std::string decl_const = "(declare-const REG (_ BitVec " + std::to_string(register_size) + "))\n";
    z3::expr ind_inv = z3::mk_and(p.ctx.parse_string((decl_const + "(define-fun .induct_inv ((.R (_ BitVec " + std::to_string(register_size) + "))) Bool (!\n" + inv_prop + "(assert (.induct_inv REG))").c_str())).simplify();

    return ind_inv;
}

// Generate Skolem function from the inductive invariant
z3::expr Algorithm::skolem_from_S(z3::expr S, int k) {
    // Construct S[!X \to X] & !S[X \to !X]
    // S[!X \to X]:
    // ------------------------------------------------------------------------------------
    // | is_init | reached_neg | k | y_k |     x     | target k | target y_k | target z_k |
    // ------------------------------------------------------------------------------------
    // |    0    |      1      | k |  0  | (z_k, 0)  |     k    |      1     |     z_k    |
    // ------------------------------------------------------------------------------------
    // S[X \to !X]:
    // ------------------------------------------------------------------------------------
    // | is_init | reached_neg | k | y_k |     x     | target k | target y_k | target z_k |
    // ------------------------------------------------------------------------------------
    // |    0    |      1      | k |  1  | (z_k, 0)  |     k    |      0     |     z_k    |
    // ------------------------------------------------------------------------------------

    z3::expr_vector src(p.ctx);
    src.push_back(p.ctx.bv_const("REG", register_size));
    z3::expr_vector dst_0(p.ctx);
    z3::expr_vector dst_1(p.ctx);
    for (int i = max_dep_size - 1; i >= 0; i--) {
        dst_0.push_back(p.e_vars[k].second.size() > i ? bool2bv(p.e_vars[k].second[i]) : p.ctx.bv_val(0, 1));
        dst_1.push_back(p.e_vars[k].second.size() > i ? bool2bv(p.e_vars[k].second[i]) : p.ctx.bv_val(0, 1));
    }
    dst_0.push_back(p.ctx.bv_val(1, 1));  // y_k
    dst_1.push_back(p.ctx.bv_val(0, 1));
    dst_0.push_back(p.ctx.bv_val(k, 1));  // k
    dst_1.push_back(p.ctx.bv_val(k, 1));
    for (auto& s : p.u_vars | std::ranges::views::reverse) {
        dst_0.push_back(bool2bv(s));
        dst_1.push_back(bool2bv(s));
    }
    dst_0.push_back(p.ctx.bv_val(0, 1));  // y_k
    dst_1.push_back(p.ctx.bv_val(1, 1));
    dst_0.push_back(p.ctx.bv_val(k, 1));  // k
    dst_1.push_back(p.ctx.bv_val(k, 1));
    dst_0.push_back(p.ctx.bv_val(1, 1));  // flag
    dst_1.push_back(p.ctx.bv_val(1, 1));
    dst_0.push_back(p.ctx.bv_val(1, 1));  // init
    dst_1.push_back(p.ctx.bv_val(1, 1));

    z3::expr S_X_to_neg_X = single_substitute(S, p.ctx.bv_const("REG", register_size), z3::concat(dst_0));  // S[X -> !X]
    z3::expr S_neg_X_to_X = single_substitute(S, p.ctx.bv_const("REG", register_size), z3::concat(dst_1));  // S[!X -> X]
    z3::expr f = S_neg_X_to_X && (!S_X_to_neg_X);
    
    std::set<std::string> x(p.u_vars_str.begin(), p.u_vars_str.end());
    std::set<std::string> zk(p.e_vars_str[k].second.begin(), p.e_vars_str[k].second.end());
    std::set<std::string> x_minus_zk;
    std::set_difference(x.begin(), x.end(), zk.begin(), zk.end(), std::inserter(x_minus_zk, x_minus_zk.end()));
    for (auto& v : x_minus_zk) {
        f = single_substitute(f, p.ctx.bool_const(v.c_str()), p.ctx.bool_val(0));
    }
    return f;
}

void Algorithm::patch(z3::model counterexample) {
    z3::expr_vector tmp(p.ctx);
    tmp.push_back(bv_at(r, idx_lookup["init"]));
    tmp.push_back(bv_at(r_next, idx_lookup["init"]));

    tmp.push_back(bv_at(r, idx_lookup["flag"]) == bv_at(r_next, idx_lookup["flag"]));

    tmp.push_back(!bv_at(r, idx_lookup["k"]));
    tmp.push_back(!bv_at(r_next, idx_lookup["k"]));

    if (counterexample.eval(p.e_vars[0].first, true).bool_value() == Z3_L_TRUE) {
        tmp.push_back(!bv_at(r, idx_lookup["y_k"]));
        tmp.push_back(bv_at(r_next, idx_lookup["y_k"]));
    } else {
        tmp.push_back(bv_at(r, idx_lookup["y_k"]));
        tmp.push_back(!bv_at(r_next, idx_lookup["y_k"]));
    }

    for (auto& v : p.e_vars_str[0].second) {
        if (counterexample.eval(p.ctx.bool_const(v.c_str()), true).bool_value() == Z3_L_TRUE) {
            tmp.push_back(bv_at(r, idx_lookup[v]));
        } else {
            tmp.push_back(!bv_at(r, idx_lookup[v]));
        }
    }

    for (int i = idx_lookup["y_k"] + 1; i < register_size; i++) {
        tmp.push_back(bv_at(r, i) == bv_at(r_next, i));
    }

    transition = transition || z3::mk_and(tmp);
    tmp.resize(0);
}

void Algorithm::dependencies_check(z3::expr& f_0, z3::expr& f_1) {
    z3::solver solver(p.ctx);
    z3::expr_vector x_vars(p.ctx);
    z3::expr_vector x_vars_p(p.ctx);
    for (auto& v : p.u_vars_str) {
        x_vars_p.push_back(p.ctx.bool_const((v + "$prime").c_str()));
        x_vars.push_back(p.ctx.bool_const(v.c_str()));
    }

    z3::expr_vector src(p.ctx);
    z3::expr_vector dst(p.ctx);
    for (auto& v : p.e_vars_str[0].second) {
        src.push_back(p.ctx.bool_const((v + "$prime").c_str()));
        dst.push_back(p.ctx.bool_const(v.c_str()));
    }
    z3::expr f_0_p = f_0.substitute(x_vars, x_vars_p).substitute(src, dst);
    src.resize(0);
    dst.resize(0);
    for (auto& v : p.e_vars_str[1].second) {
        src.push_back(p.ctx.bool_const((v + "$prime").c_str()));
        dst.push_back(p.ctx.bool_const(v.c_str()));
    }
    z3::expr f_1_p = f_1.substitute(x_vars, x_vars_p).substitute(src, dst);

    solver.add((f_0 != f_0_p) && (f_1 != f_1_p));
    assert(solver.check() == z3::unsat);
}

void Algorithm::save_proof(z3::expr& f_0, z3::expr& f_1, std::string path) {
    std::ofstream proof(path);
    proof << "; Declare variables\n";
    for (auto& u : p.u_vars) {
        proof << "(declare-const " << u << " Bool)\n";
    }
    proof << "\n";

    proof << "; Skolem function for y0\n";
    proof << "(define-fun " + p.e_vars_str[0].first + " () Bool\n";
    proof << f_0.simplify();
    proof << ")\n\n";

    proof << "; Skolem function for y1\n";
    proof << "(define-fun " + p.e_vars_str[1].first + " () Bool\n";
    proof << f_1.simplify();
    proof << ")\n\n";

    proof << "; 2DQBF phi\n";
    proof << "(define-fun phi () Bool\n";
    proof << p.phi.simplify();
    proof << ")\n\n";

    proof << "(assert (not phi))\n(check-sat)";
    proof.close();
};

void Algorithm::run(bool gen_skolem) {
    print_info("Solving");
    print_to_file("./transform.smt2");
    // check_avr();
    AVR_result result = avr.run_avr("./transform.smt2");
    assert(result != AVR_result::UNKNOWN);
    if (result == AVR_result::TIMEOUT) {
        print_info("Timeout");
    } else if (result == AVR_result::UNSAT) {
        print_info("UNSAT");
    } else if (result == AVR_result::SAT) {
        print_info("SAT");
        if (gen_skolem) {
            print_info("Extracting Skolem function");
            z3::expr y_0 = p.e_vars[0].first;
            z3::expr y_1 = p.e_vars[1].first;
            z3::expr S = extract_S("./output/work_test/inv.smt2");
            z3::expr f_0 = skolem_from_S(S, 0);
            z3::expr f_1 = skolem_from_S(S, 1);
            z3::solver solver(p.ctx);
            solver.add(!p.phi);

            while (solver.check(expr2expr_vector((y_0 == f_0) && (y_1 == f_1))) == z3::sat) {
                z3::model counterexample = solver.get_model();
                patch(counterexample);
                print_to_file("./transform.smt2");
                result = avr.run_avr("./transform.smt2");
                assert(result == AVR_result::SAT);
                S = extract_S("./output/work_test/inv.smt2");
                f_0 = skolem_from_S(S, 0);
                f_1 = skolem_from_S(S, 1);
            }
            dependencies_check(f_0, f_1);
            save_proof(f_0, f_1, "./proof.smt2");
        }
    }
}