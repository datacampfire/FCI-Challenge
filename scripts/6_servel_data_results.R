library(readr)
library(dplyr)
library(readxl)
library(stringr)

try(dir.create("~/datacampfire/FCI-Challenge/servel_data/elections_results_clean"))

resultados_elecciones_diputados = read_excel("~/datacampfire/FCI-Challenge/servel_data/elections_results/resultados_elecciones_diputados_1989-2013.xlsx") 

names(resultados_elecciones_diputados) = str_replace_all(names(resultados_elecciones_diputados), "[[:punct:]]", "")
names(resultados_elecciones_diputados) = gsub(" ","_",names(resultados_elecciones_diputados))
names(resultados_elecciones_diputados) = str_to_lower(names(resultados_elecciones_diputados))
names(resultados_elecciones_diputados) = iconv(names(resultados_elecciones_diputados), from="", to="ASCII//TRANSLIT", sub = "")
names(resultados_elecciones_diputados) = gsub("\\~","",names(resultados_elecciones_diputados))
names(resultados_elecciones_diputados) = gsub("\\'","",names(resultados_elecciones_diputados))

resultados_elecciones_diputados %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/elections_results_clean/resultados_elecciones_diputados_1989_2013.csv")

#######

resultados_elecciones_presidenciales = read_excel("~/datacampfire/FCI-Challenge/servel_data/elections_results/resultados_elecciones_presidenciales_1989-2013.xlsx") 

names(resultados_elecciones_presidenciales) = str_replace_all(names(resultados_elecciones_presidenciales), "[[:punct:]]", "")
names(resultados_elecciones_presidenciales) = gsub(" ","_",names(resultados_elecciones_presidenciales))
names(resultados_elecciones_presidenciales) = str_to_lower(names(resultados_elecciones_presidenciales))
names(resultados_elecciones_presidenciales) = iconv(names(resultados_elecciones_presidenciales), from="", to="ASCII//TRANSLIT", sub = "")
names(resultados_elecciones_presidenciales) = gsub("\\~","",names(resultados_elecciones_presidenciales))
names(resultados_elecciones_presidenciales) = gsub("\\'","",names(resultados_elecciones_presidenciales))

resultados_elecciones_presidenciales %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/elections_results_clean/resultados_elecciones_presidenciales_1989_2013.csv")

########

resultados_elecciones_senadores = read_excel("~/datacampfire/FCI-Challenge/servel_data/elections_results/resultados_elecciones_senadores_1989-2013.xlsx") 

names(resultados_elecciones_senadores) = str_replace_all(names(resultados_elecciones_senadores), "[[:punct:]]", "")
names(resultados_elecciones_senadores) = gsub(" ","_",names(resultados_elecciones_senadores))
names(resultados_elecciones_senadores) = str_to_lower(names(resultados_elecciones_senadores))
names(resultados_elecciones_senadores) = iconv(names(resultados_elecciones_senadores), from="", to="ASCII//TRANSLIT", sub = "")
names(resultados_elecciones_senadores) = gsub("\\~","",names(resultados_elecciones_senadores))
names(resultados_elecciones_senadores) = gsub("\\'","",names(resultados_elecciones_senadores))

resultados_elecciones_senadores %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/elections_results_clean/resultados_elecciones_senadores_1989_2013.csv")
