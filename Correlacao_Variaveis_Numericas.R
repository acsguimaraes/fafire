pacman::p_load(corrplot, dplyr, ggplot2)

mtcars2 <- mtcars %>% select(cyl, disp, hp, carb)

mtcars2

cor(mtcars2)

pairs(mtcars2)

mtcarsCor <- cor(mtcars2)
corrplot(mtcarsCor, method = "number", order = 'alphabet')
corrplot(mtcarsCor, order = 'alphabet') 
