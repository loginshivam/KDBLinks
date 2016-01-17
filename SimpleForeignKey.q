currencyInfo:([sym:`$()]countryCode:`$();countryName:();ecnName:`$())
trade:([]time:();sym:`$();size:`int$();price:`float$())

//Update Foreign Key On Existing Table
update sym:`currencyInfo$sym from `trade

//Add Foreign Key while creating New Table
trade:([]time:();sym:`currencyInfo$();size:`int$();price:`float$())