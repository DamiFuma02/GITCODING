#!/bin/env python3

import sys

def solve(fin, fout):

    (N, M, K) = map(int, fin.readline().strip().split())

    G = []
    for _ in range(N):
        G.append(list(fin.readline().strip()))

    # WRITE HERE YOUR SOLUTION

    for r in G:
        print("".join(r))

if __name__ == "__main__":
    solve(sys.stdin, sys.stdout)
