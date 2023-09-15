pacman::p_load(dplyr, ggplot2, ggThemeAssist, GGally, gapminder, tidyverse)

USArrests

str(USArrests)

USArrests_state <- USArrests %>%
  tibble::rownames_to_column() %>%
  rename('State_US'= 'rowname')

USArrests_state

str(USArrests_state)

theme_set(theme_light())

USArrests %>% ggplot(aes(y = Rape)) + geom_boxplot()

USArrests %>% ggplot(aes(x = UrbanPop, y = Murder )) + geom_point(color='red', size=2) + geom_smooth() + labs(y = "Assassinatos", x = "População Urbana", title = "Relação entre Assassinatos e População Urbana") 

USArrests %>% ggplot(mapping = aes(x = Assault)) + geom_histogram(bins = 10, fill ='Pink', color='black') + labs(x = 'Assaltos para cada 100 mil habitantes', y = 'Frequência de Assaltos', title = 'Assaltos em Estados Americanos') 

USArrests_state %>% ggplot(aes(x = State_US, y = Rape, fill = State_US)) + geom_bar(stat = "identity")  +  labs( x = ' Estados Americanos', y = 'Frequência de Estupros', title = 'Estupros em Estados Americanos') + scale_fill_discrete(name="Estados Americanos") + theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) 

(plots=ggplot(USArrests, aes(x = UrbanPop)) +
    geom_line(aes(y = Rape, 
                  colour = "Frequência de Estupros"))+  
    scale_x_continuous() + 
    geom_line(aes(y = Murder, 
                  colour = "Frequência de Assassinatos"))) + labs(title="Relacão entre Frequência de Assassinatos e Estupros, baseado na População Urbana", x="População Urbana", y="") 

USArrests %>% ggplot(aes(x = UrbanPop, y = Assault)) + labs(title="Frequência de Assaltos, baseado na População Urbana", x="População Urbana", y="") + geom_line(col='red')
  




       