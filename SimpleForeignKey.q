currencyInfo:([sym:`$()]countryCode:`$();countryName:();ecnName:`$())
`currencyInfo insert(`USD`GBP`JPY`AUS;`US`UK`JP`AU;("United States";"United Kingdom";"Japan";"Australia");`EBS`EBS`FxAll`FxAll)
trade:([]time:();sym:`$();size:`int$();price:`float$())

//Update Foreign Key On Existing Table
update sym:`currencyInfo$sym from `trade

//Add Foreign Key while creating New Table
trade:([]time:();sym:`currencyInfo$();size:`int$();price:`float$())


Getting data from by foreign key
select time,sym,size,price,sym.countryCode,sym.countryName,sym.ecnName from trade

`trade insert(.z.P;`USD;10;1.4)
// cast error if key does not exists in currencyInfo
`trade insert(.z.P;`CHK;10;1.4)
