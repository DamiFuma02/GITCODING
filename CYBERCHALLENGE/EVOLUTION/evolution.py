#!/bin/env python3

import sys

#v contains all the neighbours of the current cell
#returns the value of the current cell modified following the rules
def change(current, v):
    nonEmptyCells = 0
    for i in range (len(v)):
            #count the non empty cells
            if (v[i] != "."):
                nonEmptyCells+=1
    

    if (current == "*"):   #malawere 
        if (nonEmptyCells > 4):
            return "+"   #datacell
        if (nonEmptyCells < 4):
            return "."   #empty cell
        return current
    
    if (current == "+"): #datacell
        if (nonEmptyCells > 4):
            return "*"   #malawere
        if (nonEmptyCells < 4):
            return "."   #empty cell
        return current

    if (current == "."):
        if (nonEmptyCells > 4):
            return "+"   #datacell
        return current

        





#chckes all the neighbours in order to converte the current cell following the rules
def checkNeighbours(g, row, col, N, M):
    if (row == 0 or col==0 or col==(M-1) or row==(N-1)):
        if ((row==0 or row==(N-1)) and (col==0 or col==(M-1))):
            #corner defined by row and col    
            #3 neigh so the cell becomes empty
            return "."
        #else only 1 board
        #5 neigh
        if (row==0):
            v = [g[row][col-1], g[row+1][col-1], g[row+1][col], g[row+1][col+1], g[row][col+1]]   
            
        if (row == (N-1)): #last row
            v = [g[row][col-1], g[row-1][col-1], g[row-1][col], g[row-1][col+1], g[row][col+1]]
        
        if (col == 0):
            v = [g[row-1][col], g[row-1][col+1], g[row][col+1], g[row+1][col+1], g[row+1][col]]

        if (col == (M-1)):
            v = [g[row-1][col], g[row-1][col-1], g[row][col-1], g[row+1][col-1], g[row+1][col]]
        
        return change(g[row][col], v)
    #else
    #8 neigh
    v = [g[row-1][col-1], g[row-1][col], g[row-1][col+1], g[row][col+1], g[row+1][col+1], g[row+1][col], g[row+1][col-1], g[row][col-1] ]
    return change(g[row][col], v)


def solve(fin, fout):

    (N, M, K) = map(int, fin.readline().strip().split())
    
    g = []   #conteins the input matrix
    for _ in range(N):
        g.append(list(fin.readline().strip()))

    # WRITE HERE YOUR SOLUTION
    fout = []    #empty list
    for times in range(K):   #how many times to execute the code
        if (times != 0): # not first round
            g = fout
        fout = []    #empty list
        for row in range(N):
            line = []
            for col in range(M):
                currentPosition = g[row][col]
                line.append(checkNeighbours(g, row, col, N, M))
            fout.append(line)
            
    #fout contains the matrix resolved
    print("\n-------SOLVED--------\n")
    for r in fout:
        print("".join(r))


if __name__ == "__main__":
    
    solve(sys.stdin, sys.stdout)

