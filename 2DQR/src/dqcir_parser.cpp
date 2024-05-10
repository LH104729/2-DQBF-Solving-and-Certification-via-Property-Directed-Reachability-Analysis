#include <errno.h>

#include <assert.h>
#include <fstream>
#include <iostream>

#include "DQBF.hpp"
#include "utils.hpp"

// Read from dqcir file
void DQBF::from_dqcir(std::string path) {
    if (!path.size()) {
        throw std::runtime_error("ERROR: No file given");
    }
    if (split_string(path, ".").back() != "dqcir") {
        printf("WARNING: File does not ends in .dqcir");
    }
    std::ifstream file(path);
    if (!file) {
        throw std::runtime_error("Error on opening file");
    }

    uint line_cnt = 0;
    std::string line;
    std::vector<std::string> parts;

    var_cnt = 0;
    z3::expr output(ctx);
    std::string output_str;

    z3::expr_vector gates(ctx);
    std::unordered_map<std::string, int> str_to_idx;

    // Read U/E variables
    while (getline(file, line)) {
        line_cnt++;
        if (line[0] == '#') {
            continue;
        }
        parts = split_string(line, "= (),\n\r");
        if (parts[0] == "forall") {
            parts = split_string(line, "= (),\n\r");
            for (auto it = parts.begin() + 1; it < parts.end(); it++) {
                u_vars.push_back(ctx.bool_const((*it).c_str()));
                u_vars_str.push_back(*it);
                gates.push_back(ctx.bool_const((*it).c_str()));
                str_to_idx[*it] = gates.size() - 1;
            }
        } else if (parts[0] == "depend") {
            e_vars.emplace_back(ctx.bool_const(parts[1].c_str()), std::vector<z3::expr>());
            e_vars_str.emplace_back(parts[1], std::vector<std::string>());
            for (auto it = parts.begin() + 2; it < parts.end(); it++) {
                e_vars.back().second.push_back(ctx.bool_const((*it).c_str()));
                e_vars_str.back().second.push_back(*it);
            }
            gates.push_back(ctx.bool_const(parts[1].c_str()));
            str_to_idx[parts[1]] = gates.size() - 1;

        } else if (parts[0] == "exists") {
            for (auto it = parts.begin() + 1; it < parts.end(); it++) {
                e_vars.emplace_back(ctx.bool_const((*it).c_str()), std::vector<z3::expr>(u_vars));
                e_vars_str.emplace_back(*it, std::vector<std::string>(u_vars_str));
                gates.push_back(ctx.bool_const((*it).c_str()));
                str_to_idx[*it] = gates.size() - 1;
            }
        } else if (parts[0] == "output") {
            output = ctx.bool_const(parts[1].c_str());
            output_str = parts[1];
            break;
        } else {
            parse_err_msg(line_cnt, "Expected output variable before circuit");
        }
    }

    var_cnt = u_vars.size() + e_vars.size();

    z3::expr_vector phi_vec(ctx);
    z3::expr_vector tmp(ctx);
    std::string name;

    std::function<z3::expr(z3::expr_vector)> mk_not = [](z3::expr_vector v) { return !v[0]; };
    std::function<z3::expr(z3::expr_vector)> mk_nand = [](z3::expr_vector v) { return !z3::mk_and(v); };
    std::function<z3::expr(z3::expr_vector)> mk_nor = [](z3::expr_vector v) { return !z3::mk_or(v); };
    std::function<z3::expr(z3::expr_vector)> mk_xor = [](z3::expr_vector v) {
        assert(v.size() == 2);
        return v[0] ^ v[1];
    };

    std::unordered_map<std::string, std::function<z3::expr(z3::expr_vector)>> func_map = {{"and", z3::mk_and}, {"or", z3::mk_or}, {"not", mk_not}, {"nand", mk_nand}, {"nor", mk_nor}, {"xor", mk_xor}};

    while (getline(file, line)) {
        line_cnt++;
        if (line[0] != '#' && line[0] != '\n' && line[0] != '\r') {
            parts = split_string(line, "= (),\n\r");
            tmp.resize(0);
            if (func_map.find(parts[1]) != func_map.end()) {
                for (int i = 2; i < parts.size(); i++) {
                    name = parts[i];
                    if (name[0] != '-') {
                        assert(str_to_idx.find(name) != str_to_idx.end());
                        tmp.push_back(gates[str_to_idx[name]]);
                    } else {
                        name = name.substr(1, name.size() - 1);
                        assert(str_to_idx.find(name) != str_to_idx.end());
                        tmp.push_back(!gates[str_to_idx[name]]);
                    }
                }
                gates.push_back(func_map[parts[1]](tmp));
                str_to_idx[parts[0]] = gates.size() - 1;

            } else {
                parse_err_msg(line_cnt, "Unsupported operator");
            }
        }
    }

    phi = gates[str_to_idx[output_str]].simplify();
};