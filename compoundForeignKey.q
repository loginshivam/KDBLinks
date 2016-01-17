currencyInfo:([sym:`$();countryCode:`$()]countryName:();ecnName:`$())
`currencyInfo insert(`USD`GBP`JPY`AUS;`US`UK`JP`AU;("United States";"United Kingdom";"Japan";"Australia");`EBS`EBS`FxAll`FxAll)

//update complex foreign key to table
trade:([]time:();sym:`$();countryCode:`$();size:`int$();price:`float$())
update fKey:`currencyInfo$(trade[`sym],'trade[`countryCode]) from `trade


// add foreign while creating table

trade:([]time:();sym:`$();countryCode:`$();size:`int$();price:`float$();fKey:`currencyInfo$())

//insert data
`trade insert (.z.P;`USD;`US;10;1.7;`currencyInfo$`USD`US)
//cast error
//`trade insert (.z.P;`USD;`US;10;1.7;`currencyInfo$`USD`US1)

//query in compound key table
select fKey.sym,fKey.countryCode,fKey.countryName,size,price from trade




