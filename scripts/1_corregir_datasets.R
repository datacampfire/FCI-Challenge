library(readr)
library(dplyr)

try(dir.create("datasets_corregidos"))

PP0008 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0008.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, item_ingresos = X5, unidad_monetaria = X6, monto = X7) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(monto = as.integer(gsub("\\.", "", monto))) %>% 
  write_csv("datasets_corregidos/contributions_donations_assignments_and_others.csv")

PP0009 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0009.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, item_ingresos = X5, unidad_monetaria = X6, 
         enero = X7, febrero = X8, marzo = X9, abril = X10, mayo = X11, junio = X12, julio = X13, agosto = X14, septiembre = X15, octubre = X16, noviembre = X17, diciembre = X18) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate_at(.vars = vars(enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre),
            .funs = funs(as.integer(gsub("\\.", "", .)))) %>% 
  write_csv("datasets_corregidos/income_of_political_parties_in_accordance_with_the_law.csv")

PP0010 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0010.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, tipo_cotizacion = X5, unidad_monetaria = X6, monto = X7) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(monto = as.integer(gsub("\\.", "", monto))) %>% 
  write_csv("datasets_corregidos/affiliate_quotes.csv")

PP0011 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0011.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, fecha_transferencia = X5, unidad_monetaria = X6, monto = X7, objeto_transferencia = X8, persona_juridica_receptora = X9, rut_persona_juridica = X10, persona_natural_receptora = X11) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(monto = as.integer(gsub("\\.", "", monto))) %>% 
  mutate(fecha_transferencia = gsub("\\-", "\\/", fecha_transferencia),
         fecha_transferencia = as.Date(fecha_transferencia, "%d/%m/%Y")) %>% 
  write_csv("datasets_corregidos/transfers_of_funds.csv")

PP0012 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0012.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, individualizacion_contrato = X5, contratista = X6, rut = X7, socios_o_accionistas = X8, objeto_contratacion = X9, unidad_monetaria = X10, monto = X11, fecha_inicio_contrato = X12, fecha_termino_contrato = X13, link_contrato = X14, link_modificaciones = X15) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(monto = as.integer(gsub("\\.", "", monto))) %>% 
  mutate(fecha_inicio_contrato = gsub("\\-", "\\/", fecha_inicio_contrato),
         fecha_inicio_contrato = as.Date(fecha_inicio_contrato, "%d/%m/%Y")) %>% 
  mutate(fecha_termino_contrato = gsub("\\-", "\\/", fecha_termino_contrato),
         fecha_termino_contrato = as.Date(fecha_termino_contrato, "%d/%m/%Y")) %>% 
  write_csv("datasets_corregidos/payroll_over_20_utm.csv")

PP0013 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0013.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, tipo_de_campania = X5, item = X6, unidad_monetaria = X7, monto = X8, estado = X9) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(monto = as.integer(gsub("\\.", "", monto))) %>% 
  write_csv("datasets_corregidos/registration_of_expenses_incurred_in_election_campaigns.csv")

PP0014 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0014.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, persona_que_efectua_aporte = X5, tipo_de_aporte = X6, valorizacion_en_pesos = X7) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate(valorizacion_en_pesos = as.integer(gsub("\\.", "", valorizacion_en_pesos))) %>% 
  write_csv("datasets_corregidos/registration_of_contributions_to_electoral_campaigns.csv")

PP0021 = read_delim("~/datacampfire/FCI-Challenge/datasets_originales/PP0021.csv", ";", escape_double = FALSE, trim_ws = TRUE, col_names = FALSE, skip = 1) %>% 
  rename(codigo_organismo = X1, nombre_organismo = X2, anio_informado = X3, trimestre_informado = X4, item_de_gastos = X5, unidad_monetaria = X6,
         enero = X7, febrero = X8, marzo = X9, abril = X10, mayo = X11, junio = X12, julio = X13, agosto = X14, septiembre = X15, octubre = X16, noviembre = X17, diciembre = X18) %>% 
  mutate_all(funs(gsub("\xe1", "\u00e1", .))) %>% #fix special characters
  mutate_all(funs(gsub("\xe9", "\u00e9", .))) %>% 
  mutate_all(funs(gsub("\xed", "\u00ed", .))) %>% 
  mutate_all(funs(gsub("\xf3", "\u00f3", .))) %>% 
  mutate_all(funs(gsub("\xfa", "\u00fa", .))) %>% 
  mutate_all(funs(gsub("\xf1" , "\u00f1", .))) %>% 
  mutate_all(funs(gsub("\xb0" , "\u00b0", .))) %>% 
  mutate(anio_informado = as.integer(anio_informado)) %>%  # fix numbers
  mutate_at(.vars = vars(enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre),
            .funs = funs(as.integer(gsub("\\.", "", .)))) %>% 
  write_csv("datasets_corregidos/expenses_of_political_parties_in_accordance_with_the_law.csv")
