#!/bin/env python3

import sys

sys.setrecursionlimit(1000000)
# Se vuoi leggere/scrivere da file decommenta qua
fin = open("input.txt", "r")  # File di input fornito dalla piattaforma
fout = open("output.txt", "w")  # Output da inviare alla piattaforma

# Se vuoi leggere/scrivere da linea di comando decommenta qua
#fin = sys.stdin  # input fornito dalla piattaforma
#fout = sys.stdout  # Output da inviare alla piattaforma


def swap(N, V):
    # SCRIVI QUA IL TUO CODICE
    swapping = 0
    for i in range(N-1):
        if (V[i] >= V[i+1]):
            #SWAP
            swapping +=1
            tmp = V[i]
            V[i] = V[i+1]
            V[i+1] = tmp

    return swapping


N = int(fin.readline().strip())
V = list(map(int, fin.readline().strip().split(" ")))

fout.write(str(swap(N,V)))