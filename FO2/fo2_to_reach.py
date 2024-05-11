# 1. read in an FO2 file
# 2. convert the FO2 formula to an equivalent reachability problem in .vmt
# 3. also, generate the equivalent FO2 problem in .smt2
import sys
import os
import re

UNARY = {"not"}
BINARY = {"=>"}
NARY = {"or", "and"}



class formula:
    def __init__(self, op, ch):
        self.children = ch
        self.operator = op
    
    def is_leaf(self):
        return self.operator!=None
    
def smt_and(operands):
    ret_str = "(and"
    for op in operands:
        ret_str += f" {op}"
    ret_str += ")"
    return ret_str

def smt_or(operands):
    ret_str = "(or"
    for op in operands:
        ret_str += f" {op}"
    ret_str += ")"
    return ret_str

def smt_not(op):
    return f"(not {op})"

# create an smtformula saying that bitvec can be 0 ~ 2^(bw-1)
def smt_dc(bitvec, bw):
    ret_str = "(or"
    for i_val in range(0, 2**(bw)):
        b_val = "#b" + bin(i_val)[2:].zfill(bw)
        ret_str += f" (= {bitvec} {b_val})"
    ret_str += ")"
    return ret_str

# bitvec[l .. h]
# little endian
def smt_extract(bitvec, h, l):
    return f"(= ((_ extract {h} {l}) {bitvec}) #b1)"
    
def replace_tab_nl(s):
    return s.replace("\t", " ").replace("\n", " ")

# read fo2 and return (#unary_predicate #binary_predicate alpha_formula beta_formula)
def read_fo2(fname):
    unary_cnt, binary_cnt = 0, 0
    a_formula_str, b_formula_str = "", ""
    with open(fname, "r") as fo2_file:
        line_buf = ""
        while(True):
            line_buf = fo2_file.readline()
            if line_buf: break
        unary_cnt, binary_cnt = line_buf.split()
        unary_cnt, binary_cnt = int(unary_cnt), int(binary_cnt)
        myarray = fo2_file.read().split("\n\n")
        a_formula_str, b_formula_str = replace_tab_nl(myarray[0]), replace_tab_nl(myarray[1])
    # print(f"#U={unary_cnt} #B={binary_cnt}\nalpha = {a_formula_str} \nbeta  = {b_formula_str}")
    return unary_cnt, binary_cnt, a_formula_str, b_formula_str

# write the FO2 formula into an smtlib2 file
def to_smtlib2(fname, unary_cnt, binary_cnt, alpha_formula, beta_formula):
    with open(fname, "w") as smt_file:
        smt_file.write(f"(declare-sort V 0)\n")
        for i in range(1, unary_cnt+1):
            smt_file.write(f"(declare-fun U{i} (V) Bool)\n")
        for i in range(1, binary_cnt+1):
            smt_file.write(f"(declare-fun R{i} (V V) Bool)\n")
        smt_file.write("\n")
        smt_file.write(f"(assert (forall ((x V)) {alpha_formula})) \n")
        smt_file.write(f"(assert (forall ((x V)) ( exists ((y V)) {beta_formula} ))) \n")
        smt_file.write(f"(check-sat)")
    return 0

# return F_x_eq_y, F_a, F_b
def create_smt_F(unary_cnt, binary_cnt, alpha_formula, beta_formula):
    pass

def to_vmt(fname, unary_cnt, binary_cnt, alpha_formula, beta_formula):
    # u1 = [f"u1_{i}" for i in range(1, unary_cnt+1)]
    # u2 = [f"u2_{i}" for i in range(1, unary_cnt+1)]
    # u3 = [f"u3_{i}" for i in range(1, unary_cnt+1)]
    # u4 = [f"u4_{i}" for i in range(1, unary_cnt+1)]
    
    # v1 = [f"v1_{i}" for i in range(1, binary_cnt+1)]
    # v2 = [f"v2_{i}" for i in range(1, binary_cnt+1)]
    # v3 = [f"v3_{i}" for i in range(1, binary_cnt+1)]
    # v4 = [f"v4_{i}" for i in range(1, binary_cnt+1)]
    
    bv_unary_sort = f"(_ BitVec {unary_cnt})"
    bv_binary_sort = f"(_ BitVec {binary_cnt})"    

    with open(fname, "w") as vmt_file:
        # declare register | b | \vec{u} | \vec{v} |
        vmt_file.write(f"(declare-fun .b () (_ BitVec 1))\n")
        vmt_file.write(f"(declare-fun .b$next () (_ BitVec 1))\n")
        vmt_file.write(f"(define-fun ..b () (_ BitVec 1) (! .b :next .b$next))\n")
        
        vmt_file.write(f"(declare-fun .u1 () {bv_unary_sort})\n")
        vmt_file.write(f"(declare-fun .u1$next () {bv_unary_sort})\n")
        vmt_file.write(f"(define-fun ..u1 () {bv_unary_sort} (! .u1 :next .u1$next))\n")
        
        vmt_file.write(f"(declare-fun .u2 () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .u2$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..u2 () {bv_binary_sort} (! .u2 :next .u2$next))\n")
        
        vmt_file.write(f"(declare-fun .u3 () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .u3$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..u3 () {bv_binary_sort} (! .u3 :next .u3$next))\n")
        
        vmt_file.write(f"(declare-fun .u4 () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .u4$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..u4 () {bv_binary_sort} (! .u4 :next .u4$next))\n")
        
        vmt_file.write(f"(declare-fun .v1 () {bv_unary_sort})\n")
        vmt_file.write(f"(declare-fun .v1$next () {bv_unary_sort})\n")
        vmt_file.write(f"(define-fun ..v1 () {bv_unary_sort} (! .v1 :next .v1$next))\n")
        
        vmt_file.write(f"(declare-fun .v2 () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .v2$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..v2 () {bv_binary_sort} (! .v2 :next .v2$next))\n")
        
        vmt_file.write(f"(declare-fun .r () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .r$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..r () {bv_binary_sort} (! .r :next .r$next))\n")
        
        vmt_file.write(f"(declare-fun .rr () {bv_binary_sort})\n")
        vmt_file.write(f"(declare-fun .rr$next () {bv_binary_sort})\n")
        vmt_file.write(f"(define-fun ..rr () {bv_binary_sort} (! .rr :next .rr$next))\n")
    
        # define-fun for F_x_eq_y
        F_x_eq_y = f"(and (= u1 v1) (= u2 v2))"
        F_x_eq_y_glob = f"(and (= .u1 .v1) (= .u2 .v2))"
        
        # define-fun for F_a
        vmt_file.write("\n")
        vmt_file.write(f";F_a\n")
        vmt_file.write(f"(define-fun F_a ( (u1 {bv_unary_sort}) (u2 {bv_binary_sort})) Bool\n")
        alpha_tmp = alpha_formula
        for i in range(1, unary_cnt+1):
            var = "u1"
            alpha_tmp = re.sub(fr"\(\s*U{i}\s+x\s*\)", f"{smt_extract(var,i-1,i-1)}", alpha_tmp)
        for i in range(1, binary_cnt+1):
            var = "u2"
            alpha_tmp = re.sub(fr"\(\s*R{i}\s+x\s+x\s*\)", f"{smt_extract(var,i-1,i-1)}", alpha_tmp)
        vmt_file.write(f"{alpha_tmp}\n")
        vmt_file.write(f")\n")
        
        # define_fun for F_b
        vmt_file.write("\n")
        vmt_file.write(f";F_b\n")
        vmt_file.write(f"(define-fun F_b ( \n\
                       (u1 {bv_unary_sort}) \n\
                       (u2 {bv_binary_sort}) \n\
                       (u3 {bv_binary_sort}) \n\
                       (u4 {bv_binary_sort}) \n\
                       (v1 {bv_unary_sort}) \n\
                       (v2 {bv_binary_sort})) \n\
                       \nBool\n")
        beta_tmp = beta_formula
        for i in range(1, unary_cnt+1):
            var = "u1"
            beta_tmp = re.sub(fr"\(\s*U{i}\s+x\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
            var = "v1"
            beta_tmp = re.sub(fr"\(\s*U{i}\s+y\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
        for i in range(1, binary_cnt+1):
            var = "u2"
            beta_tmp = re.sub(fr"\(\s*R{i}\s+x\s+x\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
            var = "u3"
            beta_tmp = re.sub(fr"\(\s*R{i}\s+x\s+y\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
            var = "u4"
            beta_tmp = re.sub(fr"\(\s*R{i}\s+y\s+x\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
            var = "v2"
            beta_tmp = re.sub(fr"\(\s*R{i}\s+y\s+y\s*\)", f"{smt_extract(var,i-1,i-1)}", beta_tmp)
            beta_tmp = re.sub(fr"\(\s*=\s+x\s+y\s*\)", F_x_eq_y, beta_tmp)
        vmt_file.write(f"{beta_tmp}\n")
        vmt_file.write(f")\n")
    
        # initial state
        vmt_file.write("\n")
        vmt_file.write(f"; initial state\n")
        vmt_file.write(f"(define-fun .init () Bool (!\n")
        vmt_file.write(f"(and (= .b #b0) {F_x_eq_y_glob} (F_a .u1 .u2))\n")
        vmt_file.write(f":init true))\n")    
        
        # transition relation
        vmt_file.write("\n")
        vmt_file.write(f"; transition relation\n")
        vmt_file.write(f"(define-fun .trans () Bool (!\n")
        v_eq = "(and (= .v1$next .v1) (= .v2$next .v2))"
        f_b = "(F_b .u1 .u2 .u3 .u4 .u1$next .u2$next)"
        const0_un = "#b" + "0"*unary_cnt
        const0_bi = "#b" + "0"*binary_cnt
        redundant = f"(and (= .u3$next .r$next) (= .u4$next .rr$next))"
        # redundant = f"(and "
        # redundant += smt_dc(".u3$next", binary_cnt)
        # redundant += " "
        # redundant += smt_dc(".u4$next", binary_cnt)
        # redundant += ")"
        vmt_file.write(f"(and (= .b$next #b1) {v_eq} {f_b} (F_a .u1$next .u2$next) {redundant})\n")
        vmt_file.write(f":trans true))\n")
        
        # property
        vmt_file.write("\n")
        vmt_file.write(f"; property\n")
        vmt_file.write(f"(define-fun .prop () Bool (!\n")
        vmt_file.write(f"(and (= .b #b1) {F_x_eq_y_glob})\n")
        vmt_file.write(f":invar-property 0))\n")
        
    return 0
     

if __name__ == "__main__":
    fo2_fname = sys.argv[1]
    fname, _ = os.path.splitext(fo2_fname)
    # print(fname)
    smt_fname = fname + ".smt2"
    vmt_fname = fname + ".vmt"
    unary_cnt, binary_cnt, a_formula_str, b_formula_str = read_fo2(fo2_fname)
    to_smtlib2(smt_fname, unary_cnt, binary_cnt, a_formula_str, b_formula_str)
    
    
    to_vmt(vmt_fname, unary_cnt, binary_cnt, a_formula_str, b_formula_str)