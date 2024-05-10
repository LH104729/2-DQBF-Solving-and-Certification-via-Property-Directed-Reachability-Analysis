from tqdm import tqdm
import os
import subprocess
import time
import argparse

def parse_args():
    parser = argparse.ArgumentParser(epilog="Example: python3 run_exp.py --testcases_dir ../testcases/2_colourability/2_colourability_sat/ --exec ./build/2dqr --args=\"--input\" --cwd=./build")
    parser.add_argument('--testcases_dir', type=str, required=True, help="Directory containing testcases")
    parser.add_argument('--exec', type=str, required=True, help="Executable to run")
    parser.add_argument('--cwd', type=str, help="Working directory when running the executable")
    parser.add_argument('--args', type=str, help="Arguments to pass to executable")
    return parser.parse_args()

def main():
    args = parse_args()
    testcases_dir = os.path.abspath(args.testcases_dir)
    exec_path = os.path.abspath(args.exec)

    log_file = open("./log.csv", "w+")
    log_file.write("testcase,time\n")
    log_file.flush()

    for filename in tqdm(sorted(os.listdir(testcases_dir))):
        f = os.path.join(testcases_dir, filename)
        if os.path.isfile(f):
            log_file.write(filename + ",")
            log_file.flush()
            
            t0 = time.time()
            p = subprocess.run(' '.join(['timeout', '600s', exec_path, args.args, f]), shell=True, cwd=args.cwd)
            # subprocess.run(' '.join(['timeout', '600s', '../DQBF\ Solvers/dqbdd', os.path.join(testcases_dir, filename)]), shell=True)
            # subprocess.run(' '.join(['timeout', '600s', '../DQBF\ Solvers/hqs', os.path.join(testcases_dir, filename)]), shell=True)
            # subprocess.run(' '.join(['timeout', '600s', '../DQBF\ Solvers/pedant', os.path.join(testcases_dir, filename)]), shell=True)
            log_file.write("{:.3f}\n".format(time.time() - t0))
            log_file.flush()

    log_file.close()
    
if __name__ == '__main__':
    main()
