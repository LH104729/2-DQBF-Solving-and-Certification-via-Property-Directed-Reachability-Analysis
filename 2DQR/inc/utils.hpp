#ifndef UTILS_HPP
#define UTILS_HPP

#include <z3++.h>

#include <vector>

std::vector<std::string> split_string(const std::string& str, const std::string& delim);
void print_info(const char* msg);
void print_warning(const char* msg);
void print_error(const char* msg);
void parse_err_msg(uint line, const char* msg);

z3::expr bool2bv(z3::expr b);
z3::expr_vector expr2expr_vector(z3::expr e);
z3::expr single_substitute(z3::expr e, z3::expr src, z3::expr dst);
z3::expr bv_at(z3::expr bv, uint64_t idx);

bool file_exists(const std::string& name);
#endif