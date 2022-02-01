#!/bin/env python3

import sys


fin = sys.stdin
fout = sys.stdout

sys.setrecursionlimit(1000000000)


#array with the occurrences of each char in alfabethic order
#array[0] = "a", array[1] = "b"....
def count(a): 
    occ=[0]*26    #array = [0,0,.....,0,0]
    for i in a:
        occ[ord(i)-ord("a")] +=1
    return occ


#true if array a = b
def equalVectors(a, b):   
    for i in range(26):
        if (a[i] != b[i]): return 0
        i+=1
    return 1


        



def check(a, b, err):
    if (err > len(b)): return 0
    c=0   #equal characters between a and b
    a_Occ = count(a)
    
    
    b_Occ = count(b[err:len(a)+err])

    if equalVectors(a_Occ, b_Occ): return 1
    else: 
        err+=1
        return check(a, b, err)





def solve():

    P = fin.readline().strip()
    H = fin.readline().strip()

    # WRITE YOUR SOLUTION HERE
    correct = check(P, H, 0)   #0 = start error counter
    if correct: return 1
    else: return 0

def main():
    T = int(fin.readline().strip())
    a=[]
    for _ in range(T):
        a.append(solve())
    
    for x in range(len(a)):
        fout.write(str(a[x])+"\n")
    

if __name__ == "__main__":
    main()
    
