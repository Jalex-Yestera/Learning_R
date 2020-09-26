library(roperators)
library(stringr)
library(tidyverse)
library(magrittr)

start = list ('Baby','Mommy','Daddy','Grandma','Grandpa')
act = list ('Let’s go hunt','Run away','Safe at last','It’s the end')
b <- 'shark'
c <- 'doo '
g <- '!'

for (i in start){
    fin =  paste(i, b,g)
    frase = paste(i, b, (c %s*% 6))
    print (rep(frase, 3))
    print (fin)
  }
for (i in act){
    fin =  paste(i,g)
    frase = paste(i, (c %s*% 6))
    print (rep(frase, 3))
    print (fin)
  }

