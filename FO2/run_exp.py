from tqdm import tqdm
import os
import subprocess
import time

testcases_dir = os.path.expanduser("~/FO2-Reachability/benchmarks/")

log_file = open("./log.csv", "w+")
log_file.write("testcase,avr,result,vampire\n")
log_file.flush()

for filename in tqdm(sorted(os.listdir(testcases_dir))):
    f = os.path.join(testcases_dir, filename)
    vmt_file = f"{f}/test.vmt"
    smt_file = f"{f}/test.smt2"
    log_file.write(filename + ",")
    log_file.flush()


    t0 = time.time()
    p = subprocess.run(f"cd avr/; timeout 100s python3 avr.py {vmt_file}", shell=True, capture_output=True)
    # p = subprocess.run(' '.join(['timeout', '600s', './', f]), shell=True, capture_output=True)
    # subprocess.run(' '.join(['timeout', '600s', '../DQBF\ Solvers/pedant', os.path.join(testcases_dir, filename)]), shell=True)
    log_file.write("{:.3f},".format(time.time() - t0))
    line = p.stderr.decode().split('\n')[-2].strip()
    r = line.split()[0]
    
    if r == "v":
        log_file.write("SAT,")
    elif r == "h":
        log_file.write("UNSAT,")
    else:
        log_file.write("ERR,")
    # log_file.write(p.stdout.decode().split('\n')[-1].strip())
    log_file.flush()
    
    t0 = time.time()
    p = subprocess.run(f"timeout 100s ./bin/vampire -t 105 {smt_file}", shell=True, capture_output=True)
    # p = subprocess.run(' '.join(['timeout', '600s', './', f]), shell=True, capture_output=True)
    # subprocess.run(' '.join(['timeout', '600s', '../DQBF\ Solvers/pedant', os.path.join(testcases_dir, filename)]), shell=True)
    log_file.write("{:.3f},".format(time.time() - t0))
    log_file.write('\n')
    log_file.flush()