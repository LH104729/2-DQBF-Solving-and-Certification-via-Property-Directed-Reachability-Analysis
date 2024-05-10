#include "DQBF.hpp"

DQBF::DQBF() {
    u_vars = std::vector<z3::expr>();
    e_vars = std::vector<std::pair<z3::expr, std::vector<z3::expr>>>();
}

void DQBF::print_stat(bool detailed, bool int_ver) {
    printf("-------- Stat --------\n%lu universal var(s):\n", u_vars.size());
    if (detailed) {
        if (int_ver) {
            for (auto& x : u_vars_str) {
                printf("%s ", x.c_str());
            }
            putchar_unlocked('\n');
        } else {
            for (auto it = u_vars.begin(); it != u_vars.end(); it++) {
                printf("%s ", (*it).to_string().c_str());
            }
            putchar_unlocked('\n');
        }
    }
    printf("%lu existential var(s):\n", e_vars.size());
    if (detailed) {
        if (int_ver) {
            for (auto& y : e_vars_str) {
                printf("%s: ", y.first.c_str());
                for (auto& x : y.second) {
                    printf("%s ", x.c_str());
                }
                putchar_unlocked('\n');
            }
        } else {
            for (auto it = e_vars.begin(); it != e_vars.end(); it++) {
                printf("%s: ", (*it).first.to_string().c_str());
                for (auto x = (*it).second.begin(); x != (*it).second.end(); x++) {
                    printf("%s ", (*x).to_string().c_str());
                }
                putchar_unlocked('\n');
            }
        }
    }
}