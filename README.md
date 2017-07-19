# FCI-Challenge

# English README

Here are the datasets for Datacampfire Hackathon.

## Advisory Board for Transparency datasets

This section covers the folders `active_transparency/datos_corregidos`, `active_transparency/datos_originales` and `active_transparency/dump`.

Some of the data used for the Hackathon comes from the [Advisory Board for Transparency](http://www.consejotransparencia.cl/), after they consolidate the information of all the active political parties in Chile on their FTP server, and that information covers 16 out of the 24 existing parties.

Political parties release their financial information and make changes from time to time, so this datasets reveal a snapshot in time that might change after imputations and corrections.

You'll see that there are not all parties on all the datasets. Unfortunately this is something beyond our means.

The items covered here are demanded by the laws in force in Chile. This information covers 21 spreadsheets that political parties send to que Advisory Board since last year. Here we selected eight (8) spreadsheets that we cleaned and that are available at https://partidospublicos.cl/ but we do not have the most updated information because we rely on snapshots that you can see at https://datos.partidospublicos.cl/. 

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

*item_de_gastos* contemplates thirteen (6) categories:

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

The dump folder is a compressed dump of https://partidospublicos.cl/ application database. This database can be imported with Ruby or SQL and covers financial information sent every monday, those are thsame files that can be found in https://datos.partidospublicos.cl/.

# Congress

This section covers the folder `diputados/` and covers and contemplates information and contemplates these files:

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

This section covers the folder `tweets/` and covers different tweets related to hashtags with political content during year 2017.

# Google

This section covers the folder `google/` and covers different news related to political content during year 2017.
