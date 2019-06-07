summarize
describe
summarize
histogram religion
histogram age
histogram wantedlc, normal
graph pie, over(pregtermin)
graph pie country, over(pregtermin)
graph pie country
graph pie country, over(pregtermin)
graph pie pregtermin, over(country)
graph box pregtermin, over(country)
tsreport age
tsset age
ucm fplchdesire age
regress fplchdesire age
regress fplchdesire age country##pregtermin
margins pregtermin#country, plot
margins r.country@pregtermin
contrast pregtermin
contrast country
print"does this work"
print "does this work"
print (lol)
graph pie country if = bangladesh, over(pregtermin)
graph pie country if bangladesh, over(pregtermin)

