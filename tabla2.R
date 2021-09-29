library(readr)
library(tidyverse)
tabla_quartile_factor <- read_csv("tabla_quartile_factor.csv")
View(tabla_quartile_factor)

tabla_quartile_factor <- tabla_quartile_factor %>% mutate(sales_balanced = sales_balanced/1000000,
                                 `value-aded_balanced` = `value-aded_balanced`/1000000,
                                 sales_unbalanced = sales_unbalanced/1000000,
                                 `value-aded_unbalanced` = `value-aded_unbalanced`/1000000)


tabla_quartile_factor%>% 
  xtable::xtable(., type = "latex", file = "Ecuador-project/filename2.tex") 
