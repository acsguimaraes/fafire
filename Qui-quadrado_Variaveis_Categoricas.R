pacman::p_load(data.table, ggplot2, dplyr)

starwars

starwars <- starwars[, -c(12:14)]

str(starwars)

starwars_table <- table(starwars$gender, starwars$eye_color)
starwars_table

ggplot(starwars) + aes(x = eye_color, fill = gender) + geom_bar(position = "fill")

starwars_tabl_test<- chisq.test(starwars_table) 
starwars_tabl_test 
starwars_tabl_test$observed
starwars_tabl_test$expected
