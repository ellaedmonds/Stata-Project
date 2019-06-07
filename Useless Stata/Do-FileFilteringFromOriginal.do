use "/Users/ellaedmonds/Downloads/dhsdata (1).dta"
summarize
reshape wide pregtermin-knowfp, i(year) j(country)
. reshape wide pregtermin-knowfp, i(year) j(country)
. reshape wide pregtermin-knowfp, i(year)
. reshape wide pregtermin-knowfp, i(year) j(religion)
order country age pregtermin
order country year age pregtermin religion cheb wantedlc unmet knowfp unmetneed unmetneed2 unmetneed3 fpknotyp fplchdesire
mi erase idhspid
erase idhspid
drop sample
drop idhspid-dob1stkidcmc
describe
summarize
summarize
save lessdata

