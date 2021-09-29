library(readr)
library(tidyverse)

tabla_sector_shock <- read_csv("tabla_sector_shock.csv")
View(tabla_sector_shock)

tabla_sector_shock <- tabla_sector_shock %>% rename(Sector=nueva_seccion,
                              `Nombre Completo del Sector`= etiqueta,
                              `Impacto` = rel_shock_6m_unbalanced,
                              `Ventas (% agregado de participación)` = share_sales_unbalanced,
                              `N` = max_count_unbalanced,
                              `Impacto ` = rel_shock_6m_balanced,
                              `Ventas (% agregado de participación) ` = share_sales_balanced,
                              `N ` = max_count_balanced) 

tabla_sector_shock %>% 
  xtable::xtable(., type = "latex", file = "Ecuador-project/filename2.tex") 


\multirow{3}{|c|}{\textbf{Sector}} & \multirow{3}{|c|}{\textbf{Nombre Completo del Sector}} & \multirow{3}{|c|}{\textbf{Impacto}} & \textbf{Ventas} & \multirow{3}{|c|}{\textbf{N}} & \multirow{3}{|c|}{\textbf{Impacto}} & \textbf{Ventas} & \multirow{3}{|c|}{\textbf{N}}\\
&  &  & \textbf{(\% agg.} &  &   & \textbf{(\% agg. &}  \\ 
&  &  & \textbf{ventas)} &  &   & \textbf{ventas)} &  \\


\textbf{Sector} & \textbf{Nombre Completo del Sector} & \textbf{Impacto} & \textbf{Ventas} & \textbf{N} & \textbf{Impacto}  & \textbf{Ventas} & \textbf{N} \\

Sector & Nombre Completo del Sector & Impacto & Ventas & N & Impacto  & Ventas & N 