library(readr)
library(dplyr)
library(readxl)
library(stringr)

try(dir.create("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean"))

gastos_elecciones_generales_2013 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/gastos_elecciones_generales_2013.xlsx")

names(gastos_elecciones_generales_2013) = str_replace_all(names(gastos_elecciones_generales_2013), "[[:punct:]]", "")
names(gastos_elecciones_generales_2013) = gsub(" ","_",names(gastos_elecciones_generales_2013))
names(gastos_elecciones_generales_2013) = str_to_lower(names(gastos_elecciones_generales_2013))
names(gastos_elecciones_generales_2013) = iconv(names(gastos_elecciones_generales_2013), from="", to="ASCII//TRANSLIT", sub = "")
names(gastos_elecciones_generales_2013) = gsub("\\~","",names(gastos_elecciones_generales_2013))
names(gastos_elecciones_generales_2013) = gsub("\\'","",names(gastos_elecciones_generales_2013))

gastos_elecciones_generales_2013 %>% 
  select(-x1) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/gastos_elecciones_generales_2013.csv")

#######

gastos_elecciones_municipales_2016 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/gastos_elecciones_municipales_2016.xlsx")

names(gastos_elecciones_municipales_2016) = str_replace_all(names(gastos_elecciones_municipales_2016), "[[:punct:]]", "")
names(gastos_elecciones_municipales_2016) = gsub(" ","_",names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = str_to_lower(names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = iconv(names(gastos_elecciones_municipales_2016), from="", to="ASCII//TRANSLIT", sub = "")
names(gastos_elecciones_municipales_2016) = gsub("\\~","",names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = gsub("\\'","",names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = gsub("\n","_",names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = gsub("\r","_",names(gastos_elecciones_municipales_2016))
names(gastos_elecciones_municipales_2016) = gsub("__","_",names(gastos_elecciones_municipales_2016))

gastos_elecciones_municipales_2016 %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/gastos_elecciones_municipales_2016.csv")

#######

ingresos_elecciones_generales_2013 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/ingresos_elecciones_generales_2013.xlsx")

names(ingresos_elecciones_generales_2013) = str_replace_all(names(ingresos_elecciones_generales_2013), "[[:punct:]]", "")
names(ingresos_elecciones_generales_2013) = gsub(" ","_",names(ingresos_elecciones_generales_2013))
names(ingresos_elecciones_generales_2013) = str_to_lower(names(ingresos_elecciones_generales_2013))
names(ingresos_elecciones_generales_2013) = iconv(names(ingresos_elecciones_generales_2013), from="", to="ASCII//TRANSLIT", sub = "")
names(ingresos_elecciones_generales_2013) = gsub("\\~","",names(ingresos_elecciones_generales_2013))
names(ingresos_elecciones_generales_2013) = gsub("\\'","",names(ingresos_elecciones_generales_2013))

ingresos_elecciones_generales_2013 %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/ingresos_elecciones_generales_2013.csv")

#######

ingresos_elecciones_municipales_2016 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/ingresos_elecciones_municipales_2016.xlsx")

names(ingresos_elecciones_municipales_2016) = str_replace_all(names(ingresos_elecciones_municipales_2016), "[[:punct:]]", "")
names(ingresos_elecciones_municipales_2016) = gsub(" ","_",names(ingresos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = str_to_lower(names(ingresos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = iconv(names(ingresos_elecciones_municipales_2016), from="", to="ASCII//TRANSLIT", sub = "")
names(ingresos_elecciones_municipales_2016) = gsub("\\~","",names(ingresos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = gsub("\\'","",names(ingresos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = gsub("\n","_",names(gastos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = gsub("\r","_",names(gastos_elecciones_municipales_2016))
names(ingresos_elecciones_municipales_2016) = gsub("__","_",names(gastos_elecciones_municipales_2016))

ingresos_elecciones_municipales_2016 %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/ingresos_elecciones_municipales_2016.csv")

#######

ingresos_segunda_vuelta_presidencla_2013 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/ingresos_segunda_vuelta_presidencla_2013.xlsx")

names(ingresos_segunda_vuelta_presidencla_2013) = str_replace_all(names(ingresos_segunda_vuelta_presidencla_2013), "[[:punct:]]", "")
names(ingresos_segunda_vuelta_presidencla_2013) = gsub(" ","_",names(ingresos_segunda_vuelta_presidencla_2013))
names(ingresos_segunda_vuelta_presidencla_2013) = str_to_lower(names(ingresos_segunda_vuelta_presidencla_2013))
names(ingresos_segunda_vuelta_presidencla_2013) = iconv(names(ingresos_segunda_vuelta_presidencla_2013), from="", to="ASCII//TRANSLIT", sub = "")
names(ingresos_segunda_vuelta_presidencla_2013) = gsub("\\~","",names(ingresos_segunda_vuelta_presidencla_2013))
names(ingresos_segunda_vuelta_presidencla_2013) = gsub("\\'","",names(ingresos_segunda_vuelta_presidencla_2013))

ingresos_segunda_vuelta_presidencla_2013 %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/ingresos_segunda_vuelta_presidencla_2013.csv")

########

gastos_segunda_vuelta_presidencial_2013 = read_excel("~/datacampfire/FCI-Challenge/servel_data/income_expenses/gastos_segunda_vuelta_presidencial_2013.xlsx")

names(gastos_segunda_vuelta_presidencial_2013) = str_replace_all(names(gastos_segunda_vuelta_presidencial_2013), "[[:punct:]]", "")
names(gastos_segunda_vuelta_presidencial_2013) = gsub(" ","_",names(gastos_segunda_vuelta_presidencial_2013))
names(gastos_segunda_vuelta_presidencial_2013) = str_to_lower(names(gastos_segunda_vuelta_presidencial_2013))
names(gastos_segunda_vuelta_presidencial_2013) = iconv(names(gastos_segunda_vuelta_presidencial_2013), from="", to="ASCII//TRANSLIT", sub = "")
names(gastos_segunda_vuelta_presidencial_2013) = gsub("\\~","",names(gastos_segunda_vuelta_presidencial_2013))
names(gastos_segunda_vuelta_presidencial_2013) = gsub("\\'","",names(gastos_segunda_vuelta_presidencial_2013))

gastos_segunda_vuelta_presidencial_2013 %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  write_csv("~/datacampfire/FCI-Challenge/servel_data/income_expenses_clean/gastos_segunda_vuelta_presidencial_2013.csv")
