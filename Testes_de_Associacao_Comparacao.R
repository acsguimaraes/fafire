
pacman::p_load(ccaPP, lsa, minerva, Rfast, dplyr, ggplot2)

multi.cor <- function(x, y) {
  c(
    cor = cor(x, y), 
    dcor = dcor(x, y), 
    cosine = cosine(x, y), 
    maxCor = maxCorProj(x, y), 
    MIC = mine (x, y) 
  )
}

multi.cor(mtcars$hp, mtcars$disp)

plot(mtcars$hp, mtcars$disp) 

corList <- multi.cor(mtcars$hp, mtcars$disp)
names(corList)

corList <- corList[c(1,5,6,7, 15)]
corList
