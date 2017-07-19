# FCI-Challenge

# README en Castellano

Acá están los datasets para la Hackathon de Datacampfire.

## Consejo para la transparencia

Esta sección cubre las carpetas `active_transparency/datos_corregidos`, `active_transparency/datos_originales` y `active_transparency/dump`.

Parte de la data usada en esta hackathon proviene del [Consejo para la transparencia](http://www.consejotransparencia.cl/), luego de que ellos consolidan toda la información de los partidos políticos activos en Chile en su servidor FTP, y esa información cubre 16 de los 24 partidos existentes.

Los partidos políticos liberan su información con cambios e imputaciones, estos datasets reflejan la información vigente en un momento del tiempo por lo que podría cambiar en el futuro.

No todos los partidos aparecen en estos datasets. Esto no depende de nosotros.

Los items presentados son los que la legilación vigente en Chile contempla. Esto incluye 21 hojas de cálculo que los partidos envían al Consejo desde el año pasado. Hemos seleccionado ocho (8) hojas que hemos limpiado, las cuales están disponibles en https://partidospublicos.cl/  pero no tenemos la información más reciente ya que dependemos de los snapshots disponibles en https://datos.partidospublicos.cl/.

## Clean datasets

* `contributions_donations_assignments_and_others.csv`: Contribuciones, donaciones, asignaciones y otros
* `income_of_political_parties_in_accordance_with_the_law.csv`: Ingresos de los partidos acorde a la ley
* `affiliate_quotes.csv`: Quotas de afiliados
* `transfers_of_funds.csv`: Transferencia de fondos
* `payroll_over_20_utm.csv`: Pagos sobre 20 UTM
* `registration_of_expenses_incurred_in_election_campaigns.csv`: Registro de gastos de campaña
* `registration_of_contributions_to_electoral_campaigns.csv`: Registro de contribuciones a campañas
* `expenses_of_political_parties_in_accordance_with_the_law.csv`: Gastos de los partidos acorde a la ley

## Clean datasets

### `affiliate_quotes.csv`

Vista previa:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|tipo_cotizacion|unidad_monetaria|monto   |
|----------------|----------------------------------------------------------------------|--------------|-------------------|---------------|----------------|--------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Ordinaria      |Pesos           |0       |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Extraordinaria |Pesos           |0       |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Ordinarias     |Pesos           |4452200 |

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* tipo_cotizacion: Tipo de cotización (puede ser ordinaria o extraordinaria)
* unidad_monetaria: Peso chileno (CLP)
* monto: Monto declarado

## `contributions_donations_assignments_and_others.csv`

Vista previa:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|item_ingresos                                 |unidad_monetaria|monto     |
|----------------|----------------------------------------------------------------------|--------------|-------------------|----------------------------------------------|----------------|----------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Cotizaciones                                  |Pesos           |0         |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Donaciones                                    |Pesos           |0         |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Asignaciones testamentarias                   |Pesos           |0         |

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* item_ingresos: Naturaleza del dinero declarado
* unidad_monetaria: Peso chileno (CLP)
* monto: Cantidad de dinero declarada

*item_ingresos* contempla (8) categorías:

* Cotizaciones (established contributions)
* Donaciones (donations)
* Asignaciones testamentarias (income receive after testament)
* Frutos y productos de los Bienes Patrimoniales (profit produced by parties properties rental, investments, etc)
* Aportes del Estado (money given by the State)
* Otras Transferencias publicas (other transfers from public sector)
* Otras Transferencias privadas (other transfers from private sector)
* Ingresos militantes (members fees)

## `expenses_of_political_parties_in_accordance_with_the_law.csv`

Vista previa:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|item_de_gastos                                                                     |unidad_monetaria|enero    |febrero  |marzo    |abril|mayo|junio|julio|agosto|septiembre|octubre  |noviembre|diciembre|
|----------------|----------------------------------------------------------------------|--------------|-------------------|-----------------------------------------------------------------------------------|----------------|---------|---------|---------|-----|----|-----|-----|------|----------|---------|---------|---------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos de Personal                                                                 |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos de adquisición de bienes y servicios o gastos corrientes                    |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |5693310  |994      |64079    |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos financieros por préstamos de corto plazo                                    |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |


Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* item_de_gastos: Expenditure on different categories
* unidad_monetaria: Peso chileno (CLP)
* Las columnas "enero" (january) a "diciembre" (december) se refieren al gasto efectuado en un mes

*item_de_gastos* contemplates thirteen (13) categories:

* Gastos de Personal (employees expenditure)
* Gastos de adquisicion de bienes y servicios o gastos corrientes (goods, services or common expenditure)
* Gastos financieros por prestamos de corto plazo (short run loans paid interest)
* Gastos financieros por prestamos de largo plazo (long run loans paid interest)
* Otros gastos de administracion (other managerial expenses)
* Gastos de actividades de investigacion (research activities expenditure)
* Gastos de actividades de educacion civica (civic instruction expenditure)
* Gastos de actividades de fomento a la participacion femenina (foster women participation expenditure)
* Gastos de actividades de fomento a la participacion de los jovenes (foster youth participation expenditure)
* Creditos de corto plazo, inversiones y valores de operaciones de capital (short run loans, investments and capital operations values)
* Creditos de largo plazo, inversiones y valores de operaciones de capital (long run loans, investments and capital operations values)
* Gastos de las actividades de preparacion de candidatos a cargos de eleccion popular (campaign activities expenditure)
* Gastos de las actividades de formacion de militantes (members training expenditure)

## `income_of_political_parties_in_accordance_with_the_law.csv`

Vista previa:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado|item_ingresos                                            |unidad_monetaria|enero   |febrero |marzo    |abril|mayo|junio|julio|agosto|septiembre|octubre  |noviembre|diciembre|
|----------------|--------------------------------------|--------------|-------------------|---------------------------------------------------------|----------------|--------|--------|---------|-----|----|-----|-----|------|----------|---------|---------|---------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Cuotas y aportes de afiliados                            |Pesos           |19764510|42481000|27012800 |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Rendimientos de patrimonio                               |Pesos           |0       |0       |528720   |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Aportes personas naturales                               |Pesos           |0       |0       |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* item_ingresos: Income on different categories
* unidad_monetaria: Peso chileno (CLP)
* Las columnas "enero" (january) a "diciembre" (december) se refieren al gasto efectuado en un mes

*item_de_gastos* contempla seis (6) categories:

* Cuotas y aportes de afiliados (members fees and members contributions)
* Rendimientos de patrimonio (capital revenue of assets)
* Aportes personas naturales (natural person donation)
* Aportes del estado Ley N18603 (State capital contribution)
* Rendimiento por actividades (capital revenue of activities)
* Cuanta global de las cuotas y aportes de sus afiliados (final result of fees and members contributions)

## `payroll_over_20_utm.csv`

Vista previa:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado                          |individualizacion_contrato                                                                       |contratista                                                                   |rut         |socios_o_accionistas                                                                                                 |objeto_contratacion                                                                                    |unidad_monetaria|monto    |fecha_inicio_contrato|fecha_termino_contrato|link_contrato                                                                                                               |link_modificaciones|
|----------------|--------------------------------------|--------------|---------------------------------------------|-------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------|---------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|----------------|---------|---------------------|----------------------|----------------------------------------------------------------------------------------------------------------------------|-------------------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Arriendo de espacio radial                                                                       |Compañía de Radio y Televisión Nuevo Mundo S.A.                               |99.510.820-8|Julio Ugas y Boris Navia                                                                                             |Arriendo espacio radial                                                                                |Pesos           |5000000  |2017-01-03           |2017-01-03            |http://www.pcchile.cl                                                                                                       |No Aplica          |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Impresión de materiales                                                                          |Eduardo Inostroza Acosta                                                      |8.663.592-5 |Eduardo Inostroza Acosta                                                                                             |Impresión de 2000 libros                                                                               |Pesos           |4760000  |2017-01-05           |2017-01-05            |http://www.pcchile.cl                                                                                                       |No Aplica          |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Arriendo de carpas                                                                               |Todofiestas SPA                                                               |76.241.311-6|No Aplica                                                                                                            |Arriendo carpa y mesas Fiesta de los Abrazos

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* individualizacion_contrato: Tipo de actividad (e.g. impresión de folletos)
* contratista: Contractor
* rut: RUT del contratista
* socios_o_accionistas: Accionistas o socios de la empresa
* objeto_contratacion: Motivo de contratación
* unidad_monetaria: Peso chileno (CLP)
* monto: Cantidad de dinero declarada
* fecha_inicio_contrato: Fecha de inicio del contrato
* fecha_termino_contrato: Fecha de término del contrato
* link_contrato: Link (URL) al contrato
* link_modificaciones: Link (URL) a las modificaciones

## `registration_of_contributions_to_electoral_campaigns.csv`

Vista previa:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado|persona_que_efectua_aporte               |tipo_de_aporte                                                              |valorizacion_en_pesos|
|----------------|--------------------------------------|--------------|-------------------|-----------------------------------------|----------------------------------------------------------------------------|---------------------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Patricio Iván Sanhueza Salinas           |Persona Natural                                                             |200000               |
|PP010           |Partido Ecologista Verde (PEV)        |2017          |Ene - Mar          |Estado de Chile                          |Aporte en Dinero                                                            |NA                   |
|PP011           |Partido Evolución Política (Evópoli)  |2016          |Oct - Dic          |Servel                                   |Aportes en Dinero                                                           |278135883            |

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* persona_que_efectua_aporte: Persona que realiza el aporte
* tipo_de_aporte: Tipo de aporte
* valorizacion_en_pesos: Valor en peso chileno (CLP)

## `registration_of_expenses_incurred_in_election_campaigns.csv`

 Vista previa:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|tipo_de_campania|item                                                                                                                  |unidad_monetaria|monto    |estado                         |
|----------------|----------------------------------------------------------------------|--------------|-------------------|----------------|----------------------------------------------------------------------------------------------------------------------|----------------|---------|-------------------------------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Alcaldicia      |-                                                                                                                     |Pesos           |7241839  |Pendiente de aprobación        |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Alcaldicia      |propaganda                                                                                                            |Pesos           |291075814|Aprobado                       |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Concejal        |propaganda                                                                                                            |Pesos           |268213698|Aprobado                       |

Significado de las columnas:

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* tipo_de_campania: Tipo de campaña
* item: Item a declarar
* unidad_monetaria: Peso chileno (CLP)
* monto: Cantidad de dinero
* estado: Estado

## `transfers_of_funds.csv`

Vista previa:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|fecha_transferencia|unidad_monetaria|monto   |objeto_transferencia                                                             |persona_juridica_receptora                                        |rut_persona_juridica     |persona_natural_receptora          |
|----------------|----------------------------------------------------------------------|--------------|-------------------|-------------------|----------------|--------|---------------------------------------------------------------------------------|------------------------------------------------------------------|-------------------------|-----------------------------------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |1337220 |Preparacion de Candidatos                                                        |No Aplica                                                         |8796664-2                |-                                  |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |0       |Participación Juvenil                                                            |No Aplica                                                         |No Aplica                |-                                  |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |2065091 |Participación Femenina                                                           |No Aplica                                                         |No Aplica                |-                                  |

* codigo_organismo: ID del partido usado por el Consejo
* nombre_organismo: Nombre oficial del partido
* anio_informado: Año informado
* trimestre_informado: Trimestre informado
* fecha_transferencia: Fecha de la transferencia
* unidad_monetaria: Peso chileno (CLP)
* monto: Cantidad de dinero
* objeto_transferencia: Razones para realizar transferencia
* persona_juridica_receptora: Persona jurídica que recibe del dinero
* rut_persona_juridica: RUT persona jurídica
* persona_natural_receptora: Persona natural que recibe el dinero

## Dump

The dump folder is a compressed dump of https://partidospublicos.cl/ application database. This database can be imported with Ruby or SQL and covers financial information sent every monday, those are thsame files that can be found in https://datos.partidospublicos.cl/.

# Congress

This section covers the folder `diputados/` and covers and contemplates information and contemplates these files:

## `diputados.csv`

Vista previa:

|diputado_id|nombre                               |comite                                 |img_url              |fecha_namcimiento       |profesion                                                                                                           |region|distrito|partido|
|-----------|-------------------------------------|---------------------------------------|---------------------|------------------------|--------------------------------------------------------------------------------------------------------------------|------|--------|-------|
|177        |Felipe Letelier Norambuena           |Partido Por la Democracia              |/img.aspx?prmid=g177 |11 de mayo de 1956      |Técnico agrícola                                                                                                    |VI    |33      |PPD    |
|802        |Sergio Aguiló Melo                   |Partido Comunista - Izquierda Ciudadana|/img.aspx?prmid=g802 |9 de febrero de 1953    |Ingeniero Comercial                                                                                                 |VII   |37      |IC     |
|811        |Ramón Barros Montero                 |Unión Demócrata Independiente          |/img.aspx?prmid=g811 |5 de marzo de 1958      |Ingeniero Agrónomo                                                                                                  |VI    |35      |UDI    |

Significado de las columnas:

* diputado_id: ID of the congressperson
* nombre: Name of the congressperson
* comite: Comission that the congressperson integrates in Congress
* img_url: Link (URL) to picture of the congressperson
* fecha_namcimiento: Date of birth of the congressperson
* profesion: Studies of the congressperson
* region: Region of the congressperson
* distrito: District of the congressperson
* partido: Political party of the congressperson

## `votacion_detalle.csv`

Vista previa:

|votacion_id|vote   |diputado_id|
|-----------|-------|-----------|
|19192      |A favor|802        |
|19192      |A favor|839        |
|19192      |A favor|942        |

Significado de las columnas:

* votacion_id: ID of legislative session
* vote: What the congressperson said
* diputado_id: ID of the congressperson

*vote* can be "a favor" (approves), "en contra" (rejects) or "ausente" (absent)

# Tweets

This section covers the folder `tweets/` and covers different tweets related to hashtags with political content during year 2017.

# Google

This section covers the folder `google/` and covers different news related to political content during year 2017.
