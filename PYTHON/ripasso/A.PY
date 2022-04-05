import matplotlib.pyplot as plt
import numpy as np


x = np.linspace(-5, 5)
y = x*1

def retta(a,m,q):     # ay = (mx + q) --> y = (mx+q)/a
    return (m*x + q)/a


plt.plot(x, y)


plt.title("INTERSEZIONE TRA DUE RETTE")
plt.xlabel("Variabile Indipendente X")
plt.xlabel("Variabile Dipendente Y")
plt.legend(["RETTA1", "RETTA2"])
plt.show()