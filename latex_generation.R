"Ecuador-project/dofiles/entrega_agosto/tabla_periodicidad_panel.rds" %>% 
  read_rds() %>% 
  rename_with(~ c("Panel","Tipo de declaración","Ventas totales","Valor agregado",
                  "Porcentajes de ventas", "Porcentaje de valor agregado")) %>%
  mutate( `Tipo de declaración` = case_when(str_detect(`Tipo de declaración`,"Monthl") ~ "Mensual",
                                            str_detect(`Tipo de declaración`,"Bian") ~ "Semestral",
                                            TRUE ~ "Cambios")) %>% 
select(c(1,2,3,5)) %>% 
  xtable::xtable(., type = "latex", file = "Ecuador-project/filename2.tex")  

  
  "Ecuador-project/output/tabla_sector_shock.csv"  %>% 
    read_csv() %>% 
  select(c(2:5)) %>% 
  rename_with(~ c("Sector","Impacto","Participación","Número")) %>%
      arrange(Impacto) %>% 
    slice(1:10) %>% 
  # mutate( `Tipo de declaración` = case_when(str_detect(`Tipo de declaración`,"Monthl") ~ "Mensual",
  #                                           str_detect(`Tipo de declaración`,"Bian") ~ "Semestral",
  #                                           TRUE ~ "Cambios")) %>%
  xtable::xtable(., type = "latex", file = "Ecuador-project/filename2.tex")  
