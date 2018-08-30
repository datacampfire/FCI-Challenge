# FCI-Challenge

# README en Castellano:

Acá están los datasets para la Hackathon de Datacampfire.

## Consejo para la transparencia

Esta sección cubre las carpetas `active_transparency/datos_corregidos`, `active_transparency/datos_originales` y `active_transparency/dump`.

Parte de los datos usados en esta hackathon provienen del Consejo para la Transparencia, luego de que ellos consolidan toda la información de los partidos políticos activos en Chile en su servidor FTP, y esa información cubre 16 de los 24 partidos existentes.

Los partidos políticos liberan su información con cambios e imputaciones. Estas bases de datos (Datasets) reflejan la información vigente en un momento del tiempo por lo que podría cambiar en el futuro.

No todos los partidos aparecen en estos datasets. Esto no depende de nosotros.

Los items presentados son los que la legislación vigente en Chile contempla. Esto incluye 21 hojas de cálculo que los partidos envían al Consejo desde el año pasado. Hemos seleccionado ocho (8) hojas que hemos limpiado, las cuales están disponibles en https://partidospublicos.cl/ pero no tenemos la información más reciente ya que dependemos de los snapshots disponibles en https://datos.partidospublicos.cl/.

Existe un manual de transparencia activa para los partidos políticos que puede ayudar a comprender las planillas del cplt en la url siguiente: https://partidospublicos.cl/manual .

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

La carpeta dump contiene una copia de los archivos disponibles en la aplicación de https://partidospublicos.cl/. Esta base de datos se puede importar mediante Ruby o SQL y cubre información financiera de caracter semanal, contiene todos los datos disponibles en https://datos.partidospublicos.cl/.

# Congress

Esta sección contempla la carpeta `diputados/` and covers and contemplates information and contemplates these files:

## `diputados.csv`

Vista previa:

|diputado_id|nombre                               |comite                                 |img_url              |fecha_namcimiento       |profesion                                                                                                           |region|distrito|partido|
|-----------|-------------------------------------|---------------------------------------|---------------------|------------------------|--------------------------------------------------------------------------------------------------------------------|------|--------|-------|
|177        |Felipe Letelier Norambuena           |Partido Por la Democracia              |/img.aspx?prmid=g177 |11 de mayo de 1956      |Técnico agrícola                                                                                                    |VI    |33      |PPD    |
|802        |Sergio Aguiló Melo                   |Partido Comunista - Izquierda Ciudadana|/img.aspx?prmid=g802 |9 de febrero de 1953    |Ingeniero Comercial                                                                                                 |VII   |37      |IC     |
|811        |Ramón Barros Montero                 |Unión Demócrata Independiente          |/img.aspx?prmid=g811 |5 de marzo de 1958      |Ingeniero Agrónomo                                                                                                  |VI    |35      |UDI    |

Significado de las columnas:

* diputado_id: ID del diputado
* nombre: Nombre del diputado
* comite: Comisión que integra el diputado
* img_url: Link (URL) a la foto del diputado
* fecha_namcimiento: Fecha de nacimiento del diputado
* profesion: Estudios del diputado
* region: Región del diputado
* distrito: Distrito del diputado
* partido: Partido político del diputado

## `votacion_detalle.csv`

Vista previa:

|votacion_id|vote   |diputado_id|
|-----------|-------|-----------|
|19192      |A favor|802        |
|19192      |A favor|839        |
|19192      |A favor|942        |

Significado de las columnas:

* votacion_id: ID de la sesión legislativa
* vote: Voto manifestado
* diputado_id: ID del diputado

*vote* can be "a favor" (approves), "en contra" (rejects) or "ausente" (absent)

# Tweets

Esta sección contempla la carpeta `tweets/` la que contiene tweets relacionados a contenido político durante el año 2017.

# Google

Esta sección contempla la carpeta `google/` la que contiene noticias relacionadas a la política.

# English README

Here are the datasets for Datacampfire Hackathon.

## Advisory Board for Transparency datasets

Esta sección contempla la carpetas `active_transparency/datos_corregidos`, `active_transparency/datos_originales` and `active_transparency/dump`.

Some of the data used for the Hackathon comes from the [Advisory Board for Transparency](http://www.consejotransparencia.cl/), after they consolidate the information of all the active political parties in Chile on their FTP server, and that information covers 16 out of the 24 existing parties.

Political parties release their financial information and make changes from time to time, so this datasets reveal a snapshot in time that might change after imputations and corrections.

You'll see that there are not all parties on all the datasets. Unfortunately this is something beyond our means.

The items covered here are demanded by the laws in force in Chile. This information covers 21 spreadsheets that political parties send to que Advisory Board since last year. Here we selected eight (8) spreadsheets that we cleaned and that are available at https://partidospublicos.cl/ but we do not have the most updated information because we rely on snapshots that you can see at https://datos.partidospublicos.cl/.

There is an active transparency data guide that can help understand the cplt csv files in the following url: https://partidospublicos.cl/manual

## Clean datasets

* `contributions_donations_assignments_and_others.csv`: Contributions, donations, assignments and others
* `income_of_political_parties_in_accordance_with_the_law.csv`: Income of political parties in accordance with the law
* `affiliate_quotes.csv`: Affiliate quotes
* `transfers_of_funds.csv`: Transfers of funds
* `payroll_over_20_utm.csv`: Payrolls over 20 UTM
* `registration_of_expenses_incurred_in_election_campaigns.csv`: Registration of expenses incurred in election campaigns
* `registration_of_contributions_to_electoral_campaigns.csv`: Registration of contributions to electoral campaigns
* `expenses_of_political_parties_in_accordance_with_the_law.csv`: Expenses of political parties in accordance with the law

## Clean datasets description

### `affiliate_quotes.csv`

Table preview:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|tipo_cotizacion|unidad_monetaria|monto   |
|----------------|----------------------------------------------------------------------|--------------|-------------------|---------------|----------------|--------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Ordinaria      |Pesos           |0       |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Extraordinaria |Pesos           |0       |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Ordinarias     |Pesos           |4452200 |

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarted
* tipo_cotizacion: Invoice type (can be ordinary or extraordinary)
* unidad_monetaria: Chilean peso (CLP)
* monto: Declared money amount (integer variable)

## `contributions_donations_assignments_and_others.csv`

Table preview:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|item_ingresos                                 |unidad_monetaria|monto     |
|----------------|----------------------------------------------------------------------|--------------|-------------------|----------------------------------------------|----------------|----------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Cotizaciones                                  |Pesos           |0         |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Donaciones                                    |Pesos           |0         |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Asignaciones testamentarias                   |Pesos           |0         |

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarted
* item_ingresos: Nature of declared money
* unidad_monetaria: Chilean peso (CLP)
* monto: Declared money amount (integer variable)

*item_ingresos* contemplates eight (8) categories:

* Cotizaciones (established contributions)
* Donaciones (donations)
* Asignaciones testamentarias (income receive after testament)
* Frutos y productos de los Bienes Patrimoniales (profit produced by parties properties rental, investments, etc)
* Aportes del Estado (money given by the State)
* Otras Transferencias publicas (other transfers from public sector)
* Otras Transferencias privadas (other transfers from private sector)
* Ingresos militantes (members fees)

## `expenses_of_political_parties_in_accordance_with_the_law.csv`

Table preview:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|item_de_gastos                                                                     |unidad_monetaria|enero    |febrero  |marzo    |abril|mayo|junio|julio|agosto|septiembre|octubre  |noviembre|diciembre|
|----------------|----------------------------------------------------------------------|--------------|-------------------|-----------------------------------------------------------------------------------|----------------|---------|---------|---------|-----|----|-----|-----|------|----------|---------|---------|---------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos de Personal                                                                 |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos de adquisición de bienes y servicios o gastos corrientes                    |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |5693310  |994      |64079    |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Gastos financieros por préstamos de corto plazo                                    |Pesos           |0        |0        |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |


Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter
* item_de_gastos: Expenditure on different categories
* unidad_monetaria: Chilean peso (CLP)
* columns "enero" (january) to "diciembre" (december) refer to the spent money on a certain month

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

Table preview:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado|item_ingresos                                            |unidad_monetaria|enero   |febrero |marzo    |abril|mayo|junio|julio|agosto|septiembre|octubre  |noviembre|diciembre|
|----------------|--------------------------------------|--------------|-------------------|---------------------------------------------------------|----------------|--------|--------|---------|-----|----|-----|-----|------|----------|---------|---------|---------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Cuotas y aportes de afiliados                            |Pesos           |19764510|42481000|27012800 |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Rendimientos de patrimonio                               |Pesos           |0       |0       |528720   |0    |0   |0    |0    |0     |0         |0        |0        |0        |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Aportes personas naturales                               |Pesos           |0       |0       |0        |0    |0   |0    |0    |0     |0         |0        |0        |0        |

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter
* item_ingresos: Income on different categories
* unidad_monetaria: Chilean peso (CLP)
* columns "enero" (january) to "diciembre" (december) refer to the spent money on a certain month

*item_de_gastos* contemplates six (6) categories:

* Cuotas y aportes de afiliados (members fees and members contributions)
* Rendimientos de patrimonio (capital revenue of assets)
* Aportes personas naturales (natural person donation)
* Aportes del estado Ley N18603 (State capital contribution)
* Rendimiento por actividades (capital revenue of activities)
* Cuanta global de las cuotas y aportes de sus afiliados (final result of fees and members contributions)

## `payroll_over_20_utm.csv`

Table preview:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado                          |individualizacion_contrato                                                                       |contratista                                                                   |rut         |socios_o_accionistas                                                                                                 |objeto_contratacion                                                                                    |unidad_monetaria|monto    |fecha_inicio_contrato|fecha_termino_contrato|link_contrato                                                                                                               |link_modificaciones|
|----------------|--------------------------------------|--------------|---------------------------------------------|-------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------|---------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|----------------|---------|---------------------|----------------------|----------------------------------------------------------------------------------------------------------------------------|-------------------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Arriendo de espacio radial                                                                       |Compañía de Radio y Televisión Nuevo Mundo S.A.                               |99.510.820-8|Julio Ugas y Boris Navia                                                                                             |Arriendo espacio radial                                                                                |Pesos           |5000000  |2017-01-03           |2017-01-03            |http://www.pcchile.cl                                                                                                       |No Aplica          |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Impresión de materiales                                                                          |Eduardo Inostroza Acosta                                                      |8.663.592-5 |Eduardo Inostroza Acosta                                                                                             |Impresión de 2000 libros                                                                               |Pesos           |4760000  |2017-01-05           |2017-01-05            |http://www.pcchile.cl                                                                                                       |No Aplica          |
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar                                    |Arriendo de carpas                                                                               |Todofiestas SPA                                                               |76.241.311-6|No Aplica                                                                                                            |Arriendo carpa y mesas Fiesta de los Abrazos

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter                         
* individualizacion_contrato: Type of activity (e.g. printing campaign materials)
* contratista: Contractor
* rut: Contractor tax ID
* socios_o_accionistas: Contractor entity's shareholders or associates
* objeto_contratacion: Reason to hire a contractor
* unidad_monetaria: Chilean peso (CLP)
* monto: Declared money amount (integer variable)
* fecha_inicio_contrato: Contract start date
* fecha_termino_contrato: Contract end date
* link_contrato: Link (URL) to contract
* link_modificaciones: Link (URL) to modifications

## `registration_of_contributions_to_electoral_campaigns.csv`

Table preview:

|codigo_organismo|nombre_organismo                      |anio_informado|trimestre_informado|persona_que_efectua_aporte               |tipo_de_aporte                                                              |valorizacion_en_pesos|
|----------------|--------------------------------------|--------------|-------------------|-----------------------------------------|----------------------------------------------------------------------------|---------------------|
|PP007           |Partido Comunista de Chile (PCCH)     |2017          |Ene - Mar          |Patricio Iván Sanhueza Salinas           |Persona Natural                                                             |200000               |
|PP010           |Partido Ecologista Verde (PEV)        |2017          |Ene - Mar          |Estado de Chile                          |Aporte en Dinero                                                            |NA                   |
|PP011           |Partido Evolución Política (Evópoli)  |2016          |Oct - Dic          |Servel                                   |Aportes en Dinero                                                           |278135883            |

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter                         
* persona_que_efectua_aporte: Individual who makes the contribution
* tipo_de_aporte: Kind of contribution
* valorizacion_en_pesos: Value in chilean peso (CLP)

## `registration_of_expenses_incurred_in_election_campaigns.csv`

 Table preview:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|tipo_de_campania|item                                                                                                                  |unidad_monetaria|monto    |estado                         |
|----------------|----------------------------------------------------------------------|--------------|-------------------|----------------|----------------------------------------------------------------------------------------------------------------------|----------------|---------|-------------------------------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |Alcaldicia      |-                                                                                                                     |Pesos           |7241839  |Pendiente de aprobación        |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Alcaldicia      |propaganda                                                                                                            |Pesos           |291075814|Aprobado                       |
|PP007           |Partido Comunista de Chile (PCCH)                                     |2017          |Ene - Mar          |Concejal        |propaganda                                                                                                            |Pesos           |268213698|Aprobado                       |

Columns meaning:

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter                         
* tipo_de_campania: Type of campaign
* item: Item to declare
* unidad_monetaria: Chilean peso (CLP)
* monto: Amount of money
* estado: Status

## `transfers_of_funds.csv`

Table preview:

|codigo_organismo|nombre_organismo                                                      |anio_informado|trimestre_informado|fecha_transferencia|unidad_monetaria|monto   |objeto_transferencia                                                             |persona_juridica_receptora                                        |rut_persona_juridica     |persona_natural_receptora          |
|----------------|----------------------------------------------------------------------|--------------|-------------------|-------------------|----------------|--------|---------------------------------------------------------------------------------|------------------------------------------------------------------|-------------------------|-----------------------------------|
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |1337220 |Preparacion de Candidatos                                                        |No Aplica                                                         |8796664-2                |-                                  |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |0       |Participación Juvenil                                                            |No Aplica                                                         |No Aplica                |-                                  |
|PP006           |Partido Movimiento Independiente Regionalista Agrario y Social (MIRAS)|2016          |Oct - Dic          |NA                 |Pesos           |2065091 |Participación Femenina                                                           |No Aplica                                                         |No Aplica                |-                                  |

* codigo_organismo: Party ID used by the Advisory Board
* nombre_organismo: Official parties names
* anio_informado: Reported year
* trimestre_informado: Reported quarter
* fecha_transferencia: Date of transfer
* unidad_monetaria: Chilean peso (CLP)
* monto: Amount of money
* objeto_transferencia: Reasons to transfer
* persona_juridica_receptora: Legal person that receives the money
* rut_persona_juridica: Legal person tax ID
* persona_natural_receptora: Natural person that receives the money

## Dump

The dump folder is a compressed dump of https://partidospublicos.cl/ application database. This database can be imported with Ruby or SQL and covers financial information sent every monday, those are the same files that can be found in https://datos.partidospublicos.cl/.

# Congress

Esta sección contempla la carpeta `diputados/` and covers and contemplates information and contemplates these files:

## `diputados.csv`

Table preview:

|diputado_id|nombre                               |comite                                 |img_url              |fecha_namcimiento       |profesion                                                                                                           |region|distrito|partido|
|-----------|-------------------------------------|---------------------------------------|---------------------|------------------------|--------------------------------------------------------------------------------------------------------------------|------|--------|-------|
|177        |Felipe Letelier Norambuena           |Partido Por la Democracia              |/img.aspx?prmid=g177 |11 de mayo de 1956      |Técnico agrícola                                                                                                    |VI    |33      |PPD    |
|802        |Sergio Aguiló Melo                   |Partido Comunista - Izquierda Ciudadana|/img.aspx?prmid=g802 |9 de febrero de 1953    |Ingeniero Comercial                                                                                                 |VII   |37      |IC     |
|811        |Ramón Barros Montero                 |Unión Demócrata Independiente          |/img.aspx?prmid=g811 |5 de marzo de 1958      |Ingeniero Agrónomo                                                                                                  |VI    |35      |UDI    |

Columns meaning:

* diputado_id: ID of the congressperson
* nombre: Name of the congressperson
* comite: Comission that the congressperson integrates in Congress
* img_url: Link (URL) to picture of the congressperson
* fecha_namcimiento: Date of birth of the congressperson
* profesion: Studies of the congressperson
* region: Region of the congressperson
* distrito: District of the congressperson
* partido: Political party of the congressperson

## `votacion_metadata.csv`

Table preview:

| votacion_id|boletin |dia |mes |  ano|hora     |materia                                                                                                                                                                                                |articulo                                                       | sesion|tramite                          |tipo_de_votacion |quorum            |resultado |boletin_desc |observaciones |
|-----------:|:-------|:---|:---|----:|:--------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------|------:|:--------------------------------|:----------------|:-----------------|:---------|:------------|:-------------|
|       19192|9047-21 |13  |mar | 2014|17:39:00 |complementa regulación de centros de acopio que indica.                                                                                                                                                |                                                               |      2|primer trámite / primer informe  |general          |quorum calificado |aprobado  |             |              |
|       19193|9047-21 |13  |mar | 2014|17:39:00 |complementa regulación de centros de acopio que indica.                                                                                                                                                |                                                               |      2|primer trámite / primer informe  |particular       |quorum calificado |aprobado  |             |              |
|       19194|9273-05 |13  |mar | 2014|17:39:00 |concede aporte familiar permanente de marzo y ajusta norma que indica.                                                                                                                                 |                                                               |      2|primer trámite / primer informe  |general          |quorum simple     |aprobado  |             |              |
|       19197|9273-05 |13  |mar | 2014|17:40:00 |concede aporte familiar permanente de marzo y ajusta norma que indica.                                                                                                                                 |inadmisibilidad indicación que agrega artículo 10 al proyecto. |      2|primer trámite / primer informe  |unica            |quorum simple     |aprobado  |             |              |
|       19198|9273-05 |13  |mar | 2014|17:40:00 |concede aporte familiar permanente de marzo y ajusta norma que indica.                                                                                                                                 |inciso primero del artículo 1°                                 |      2|primer trámite / primer informe  |particular       |quorum simple     |aprobado  |             |              |
|       19212|9029-14 |18  |mar | 2014|13:51:00 |modifica ley n° 20.671, con objeto de suprimir el límite máximo para regularizar ampliaciones en viviendas sociales, siempre que la superficie edificada total, no exceda de noventa metros cuadrados. |                                                               |      3|segundo trámite / primer informe |general          |quorum simple     |aprobado  |             |              |

Variable names are self-explanatory, for example for the `votation_id` 25870 the medatada is extracted from this url: https://www.camara.cl/trabajamos/sala_votacion_detalle.aspx?prmID=25870

## `votacion_detalle.csv`

Table preview:

|votacion_id|vote   |diputado_id|
|-----------|-------|-----------|
|19192      |A favor|802        |
|19192      |A favor|839        |
|19192      |A favor|942        |

Columns meaning:

* votacion_id: ID of legislative session
* vote: What the congressperson said
* diputado_id: ID of the congressperson

*vote* can be "a favor" (approves), "en contra" (rejects) or "ausente" (absent)

# Tweets

Esta sección contempla la carpeta `tweets/` and covers different tweets related to hashtags with political content during year 2017.

# Google

Esta sección contempla la carpeta `google/` and covers different news related to political content during year 2017.
