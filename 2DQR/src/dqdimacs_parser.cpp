#include <errno.h>

#include <fstream>
#include <iostream>

#include "DQBF.hpp"
#include "utils.hpp"

// Read from dqdimacs file
void DQBF::from_dqdimacs(std::string path) {
    if (!path.size()) {
        throw std::runtime_error("ERROR: No file given");
    }
    if (split_string(path, ".").back() != "dqdimacs") {
        printf("WARNING: File does not ends in .dqdimacs");
    }
    std::ifstream file(path);
    if (!file) {
        throw std::runtime_error("Error on opening file");
    }

    uint line_cnt = 0;
    std::string line;
    std::vector<std::string> parts;

    var_cnt = 0;
    uint64_t clause_cnt = 0;

    // Header
    while (getline(file, line)) {
        line_cnt++;
        parts = split_string(line, " ");
        if (parts.size() > 0) {
            if (parts[0] == "p") {
                if (parts.size() != 4 && parts[1] != "cnf") {
                    parse_err_msg(line_cnt, "Header error");
                }
                try {
                    var_cnt = std::stoi(parts[2]);
                    clause_cnt = std::stoi(parts[3]);
                } catch (const std::exception& e) {
                    parse_err_msg(line_cnt, e.what());
                }
                break;
            } else if (parts[0] != "c") {
                parse_err_msg(line_cnt, "Missing header");
            }
        }
    }
    if (var_cnt == 0) {
        parse_err_msg(line_cnt, "Missing header");
    }

    // Read U/E variables
    while (getline(file, line)) {
        line_cnt++;
        parts = split_string(line, " ");
        if (parts.size() > 0) {
            try {
                if (parts[0] == "a") {
                    for (auto it = parts.begin() + 1; it < parts.end() - 1; it++) {
                        u_vars.push_back(ctx.bool_const((*it).c_str()));
                        u_vars_str.push_back(*it);
                    }
                } else if (parts[0] == "e") {
                    for (auto it = parts.begin() + 1; it < parts.end() - 1; it++) {
                        e_vars.emplace_back(ctx.bool_const((*it).c_str()), std::vector<z3::expr>(u_vars));
                        e_vars_str.emplace_back(*it, std::vector<std::string>(u_vars_str));
                    }
                } else if (parts[0] == "d") {
                    e_vars.emplace_back(ctx.bool_const(parts[1].c_str()), std::vector<z3::expr>());
                    e_vars_str.emplace_back(parts[1], std::vector<std::string>());
                    for (auto it = parts.begin() + 2; it < parts.end() - 1; it++) {
                        e_vars.back().second.push_back(ctx.bool_const((*it).c_str()));
                        e_vars_str.back().second.push_back(*it);
                    }
                }
            } catch (const std::exception& e) {
                parse_err_msg(line_cnt, e.what());
            }
        }
        if (u_vars.size() + e_vars.size() >= var_cnt) {
            break;
        }
    }

    if (u_vars.size() + e_vars.size() != var_cnt) {
        parse_err_msg(line_cnt, "Wrong number of variables");
    }

    z3::expr_vector clauses(ctx);
    z3::expr_vector clause(ctx);

    for (int i = 0; i < clause_cnt; i++) {
        if (!getline(file, line)) {
            parse_err_msg(line_cnt, "Wrong number of clauses");
        }
        line_cnt++;
        parts = split_string(line, " ");
        clause.resize(0);
        try {
            for (auto it = parts.begin(); it < parts.end() - 1; it++) {
                if ((*it)[0] == '-') {
                    clause.push_back(!ctx.bool_const(std::string((*it).begin() + 1, (*it).end()).c_str()));
                } else {
                    clause.push_back(ctx.bool_const((*it).c_str()));
                }
            }
            clauses.push_back(z3::mk_or(clause));
        } catch (const std::exception& e) {
            parse_err_msg(line_cnt, e.what());
        }
    }

    phi = z3::mk_and(clauses);
    if (clauses.size() != clause_cnt) {
        parse_err_msg(line_cnt, "Wrong number of clauses");
    }
};