# FCI-Challenge

# English README

Here are the datasets for Datacampfire Hackathon.

## Advisory Board for Transparency datasets

Some of the data used for the Hackathon comes from the [Advisory Board for Transparency](http://www.consejotransparencia.cl/), after they consolidate the information of all the active political parties in Chile on their FTP server, and that information covers 16 out of the 24 existing parties.

Political parties release their financial information and make changes from time to time, so this datasets reveal a snapshot in time that might change after imputations and corrections.

You'll see that there are not all parties on all the datasets. Unfortunately this is something beyond our means.

## Clean datasets

* `contributions_donations_assignments_and_others.csv`: Contributions, donations, assignments and others
* `income_of_political_parties_in_accordance_with_the_law.csv`: Income of political parties in accordance with the law
* `affiliate_quotes.csv`: Affiliate quotes
* `transfers_of_funds.csv`: Transfers of funds
* `payroll_over_20_utm.csv`: Payrolls over 20 UTM
* `registration_of_expenses_incurred_in_election_campaigns.csv`: Registration of expenses incurred in election campaigns
* `registration_of_contributions_to_electoral_campaigns.csv`: Registration of contributions to electoral campaigns
* `expenses_of_political_parties_in_accordance_with_the_law.csv`: Expenses of political parties in accordance with the law

## Clean datasets description

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
* trimestre_informado: Reported quarted
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
