from itertools import permutations
b = "ssrppezukuzudugeisbwyimzhumciaguqgfvkfcr"
print(len(b))
a = "zrppe"

def check(a, b, err):
    c=0   #corrispondenze
    if (err > len(b)): return 0
    for i in a:
        #per ogni carattere di a
        if i in b[err:len(a)+err]: c+=1
    if (c == len(a)):
        #tutti i caratteri hanno corrispondenza 
        return 1
    else: 
        err+=1 
    return check(a, b, err)

if (check(a,b, 0) == 1):
    print("OK")
else: print("NO")
    

