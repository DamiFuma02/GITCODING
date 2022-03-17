M = matrix(c(
  c(1200, 1190, 1100, 1120, 890),
  c(6200, 6690, 6700, 7120, 7150),
  c(8900, 8790, 8760, 8800, 9010),
  c(3300, 3490, 3660, 4300, 4510),
  c(2190, 2000, 1890, 1740, 1500)), ncol = 5
)
rownames(M) = c("nome1", "nome2", "nome3", "nome4", "nome5")
# 
colnames(M) = LETTERS[1:5]

(M)
barplot(M, legend=TRUE, beside=TRUE)


# ISTOGRAMMA

(n = rnorm(10000, mean=0))  #1000 numeri casuali

hist(n, probability = TRUE, main = "Primo ISTOGRAMMA")

rug(n)


plot(density(n))


boxplot(n, range=1.5)
