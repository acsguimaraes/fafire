
pacman::p_load(dplyr, ggplot2, data.table)

mtcars

str(mtcars)

cor.test(mtcars$cyl, mtcars$disp)
chisq.test(mtcars$cyl, mtcars$disp)

cor.test(mtcars$hp, mtcars$disp)
chisq.test(mtcars$hp, mtcars$disp)

t.test(mtcars$mpg, mu = 20.0)

shapiro.test(mtcars$qsec)


