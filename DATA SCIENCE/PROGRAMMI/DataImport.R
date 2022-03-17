library(tibble)
x = as_tibble(iris)

library(readr)

view(x)
heights = read_csv("http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/import/heights.csv")

write_rds(heights, "file.rds")
file = read_rds("file.rds")


#DATI COMPLESSI 

world_series = scan("http://lib.stat.cmu.edu/datasets/wseries",
                     skip = 35, # - Skip the first 35 lines
                     nlines = 23, # - Then read 23 lines of data
                     what = "list") # - The data occurs in pairs: a year (numeric) and a pattern (character)

perm = order(world_series[[1]])


