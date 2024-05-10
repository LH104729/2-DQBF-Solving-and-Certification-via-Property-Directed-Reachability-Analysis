#ifndef ALGORITHM_HPP
#define ALGORITHM_HPP

#include <z3++.h>

#include <boost/process.hpp>

#include "DQBF.hpp"
#include "utils.hpp"
#include "avr_wrapper.hpp"

class Algorithm {
   public:
    Algorithm(DQBF& p, AVR_Wrapper& avr);

    void run(bool gen_skolem = false);

   private:
    AVR_Wrapper& avr;
    DQBF& p;
    z3::context& ctx;

    size_t max_dep_size;
    size_t register_size;
    std::unordered_map<std::string, int> idx_lookup;

    z3::expr r;
    z3::expr r_next;

    z3::expr initial;
    z3::expr transition;
    z3::expr property;

    z3::expr extract_S(std::string inv_smt2);
    z3::expr skolem_from_S(z3::expr S, int k);
    void patch(z3::model counterexample);

    void print_to_file(std::string path);
    void dependencies_check(z3::expr& f_0, z3::expr& f_1);
    void skolem_check(z3::expr& f_0, z3::expr& f_1);
    void save_proof(z3::expr& f_0, z3::expr& f_1, std::string path);
};

#endif
