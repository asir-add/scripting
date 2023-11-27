#!/usr/bin/python3

import subprocess

def run(cmd):
    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.DEVNULL)
    return output.decode().strip()

def print_enum(str):
    for no, line in enumerate(str.split("\n"), 1):
        print(f"{no:4}: {line}")

output = run("ls -l | tail -n +2")
print_enum(output)
