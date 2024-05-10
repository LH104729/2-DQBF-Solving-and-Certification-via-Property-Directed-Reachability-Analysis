#ifndef DQBF_HPP
#define DQBF_HPP

#include <z3++.h>

#include <boost/functional/hash.hpp>
#include <stack>
#include <string>
#include <vector>

// Data structure for DQBF
class DQBF {
   public:
    // Number of variables
    uint64_t var_cnt;

    z3::context ctx;
    DQBF();

    // Initialize from dqdimacs/dqcir file
    void from_dqdimacs(std::string path);
    void from_dqcir(std::string path);

    // Print problem info
    void print_stat(bool detailed = false, bool int_ver = true);

    // Universal variables, (name)
    std::vector<z3::expr> u_vars;
    std::vector<std::string> u_vars_str;

    // Existential variables, (name, dependency set)
    std::vector<std::pair<z3::expr, std::vector<z3::expr>>> e_vars;
    std::vector<std::pair<std::string, std::vector<std::string>>> e_vars_str;

    // Matrix
    z3::expr phi = z3::expr(ctx);
};
#endif