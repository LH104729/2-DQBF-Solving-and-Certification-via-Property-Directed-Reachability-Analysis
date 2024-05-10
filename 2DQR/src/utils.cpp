#include "utils.hpp"

#include <sys/stat.h>
#include <z3++.h>

#include <vector>

// https://stackoverflow.com/questions/289347/using-strtok-with-a-stdstring
std::vector<std::string> split_string(const std::string& str, const std::string& delim) {
    std::vector<std::string> parts;
    size_t start, end = 0;
    while (end < str.size()) {
        start = end;
        while (start < str.size() && (delim.find(str[start]) != std::string::npos)) {
            start++;  // skip initial whitespace
        }
        end = start;
        while (end < str.size() && (delim.find(str[end]) == std::string::npos)) {
            end++;  // skip to end of word
        }
        if (end - start != 0) {  // just ignore zero-length strings.
            parts.push_back(std::string(str, start, end - start));
        }
    }
    return parts;
}

void print_info(const char* msg) {
    std::vector<std::string> parts;
    parts = split_string(msg, "\n");
    for (auto it = parts.begin(); it < parts.end(); it++) {
        printf("\033[96m[INFO]\033[0m %s\n", (*it).c_str());
    }
    fflush(stdout);
}

void print_warning(const char* msg) {
    std::vector<std::string> parts;
    parts = split_string(msg, "\n");
    for (auto it = parts.begin(); it < parts.end(); it++) {
        printf("\033[93m[WARN]\033[0m %s\n", (*it).c_str());
    }
    fflush(stdout);
}

void print_error(const char* msg) {
    std::vector<std::string> parts;
    parts = split_string(msg, "\n");
    for (auto it = parts.begin(); it < parts.end(); it++) {
        printf("\033[91m[ERROR]\033[0m %s\n", (*it).c_str());
    }
    exit(-1);
}

void parse_err_msg(uint line, const char* msg) {
    printf("\033[91m[ERROR]\033[0m Error parsing file at line %u: %s\n", line, msg);
    exit(-1);
}

z3::expr bool2bv(z3::expr b) {
    return z3::ite(b, b.ctx().bv_val(1, 1), b.ctx().bv_val(0, 1));
};

z3::expr_vector expr2expr_vector(z3::expr e) {
    z3::expr_vector t(e.ctx());
    t.push_back(e);
    return t;
};

z3::expr single_substitute(z3::expr e, z3::expr src, z3::expr dst) {
    return e.substitute(expr2expr_vector(src), expr2expr_vector(dst));
};

z3::expr bv_at(z3::expr bv, uint64_t idx) {
    return (bv.extract(idx, idx) == bv.ctx().bv_val(1, 1));
};

bool file_exists(const std::string& name) {
    struct stat buffer;
    return (stat(name.c_str(), &buffer) == 0);
}

