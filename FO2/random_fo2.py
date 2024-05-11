import random
import sys
import os
import re
from pathlib import Path

def gen_fo2(unary_cnt, binary_cnt, dir, num_alpha_cls, num_beta_cls):
    alpha_preds = []
    beta_preds = []
    for i in range(1, unary_cnt+1):
        alpha_preds.append(f"(U{i} x)")
        beta_preds.append(f"(U{i} x)")
        beta_preds.append(f"(U{i} y)")
    for i in range(1, binary_cnt+1):
        alpha_preds.append(f"(R{i} x x)")
        beta_preds.append(f"(R{i} x x)")
        beta_preds.append(f"(R{i} y y)")
        beta_preds.append(f"(R{i} x y)")
        beta_preds.append(f"(R{i} y x)")
        
    alpha_cls_smt = "(and "
    for _ in range (num_alpha_cls):
        cls_smt = "(or "
        rand_id = random.randint(0, len(alpha_preds)-1)
        var = alpha_preds[rand_id]
        lit = var if random.randint(0, 1) else f"(not {var})"
        for _ in range(0, 3):
            while lit in cls_smt:
                rand_id = random.randint(0, len(alpha_preds)-1)
                var = alpha_preds[rand_id]
                lit = var if random.randint(0, 1) else f"(not {var})"
            cls_smt += f"{lit} "
        cls_smt += ") "
        alpha_cls_smt += cls_smt
    alpha_cls_smt += ")"
    
    beta_cls_smt = "(and "
    for _ in range (num_beta_cls):
        cls_smt = "(or "
        rand_id = random.randint(0, len(beta_preds)-1)
        var = beta_preds[rand_id]
        lit = var if random.randint(0, 1) else f"(not {var})"
        for _ in range(0, 3):
            while lit in cls_smt:
                rand_id = random.randint(0, len(beta_preds)-1)
                var = beta_preds[rand_id]
                lit = var if random.randint(0, 1) else f"(not {var})"
            cls_smt += f"{lit} "
        cls_smt += ") "
        beta_cls_smt += cls_smt
    beta_cls_smt += ")"
        
    
    Path(dir).mkdir(exist_ok=True) 
    with open( dir+"test.fo2", "w") as fo2_file:
        fo2_file.write(f"{unary_cnt} {binary_cnt}\n")
        fo2_file.write(f"{alpha_cls_smt}\n\n")
        fo2_file.write(f"{beta_cls_smt}\n")
    
    
if __name__ == "__main__":
    unary_cnt, binary_cnt, alpha, beta = int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4])
    dir_name = f"./benchmarks/3cnf-{unary_cnt}-{binary_cnt}-{alpha}-{beta}/"
    gen_fo2(unary_cnt, binary_cnt, dir_name, alpha, beta)