use "/Users/ellaedmonds/Documents/basicdata.dta"
summarize religion country
graph pie country, over(religion) plabel(_all name)
graph pie country, over(religion) plabel(_all name) by (country, total)
graph pie country, over(pregtermin) by(country, total) legend(off) pie(2, explode) plabel(2 percent)
graph pie country, over(pregtermin) by(country) legend(off) pie(2, explode) plabel(2 percent)
graph pie country, over(religion) by(country) legend(off) plabel(2 percent, _all name)
graph pie country, over(religion) by(country) legend(off) plabel(_all name)
graph pie country, over(religion) by(country) plabel(_all name) legend(off); 
graph pie country, over(religion) by(country) plabel(_all name) legend(off) 
graph pie country, over(religion) by(country) plabel(_all name) legend(none) 
graph pie country, over(religion) by(country) plabel(_all name) legend(no) 
graph pie country, over(religion) by(country) plabel(_all name) legend(off) 
graph pie country, over(religion) by(country) plabel(_all name) by(legend(off)) 
graph pie country, over(religion) by(country) plabel(_all name) by(foreign, legend(off)) 
graph pie country, over(religion) by(country) plabel(_all name) by(country, legend(off)) 
#senegal primarily muslim, code = 1
*senegal primarily muslim, code = 1
*senegal, egypt and bang primarily muslim, code = 1000
*Uganda and Kenya primarily Christian, catholic = 2100 protistent = 2300 anglican = 2320
if religion == "catholic" or "protistent" or "anglican" {
if religion == 2100 or 2300 or 2320 then religion = 2000
graph pie country, over(religion) by(country) plabel(_all name) by(country, legend(off)) 
if religion == 2100 or 2300 or 2320 then replace religion = 2000
graph pie country, over(religion) by(country) plabel(_all name) by(country, legend(off)) 
replace religion = religion[2000] if religion = 2100
g relcat=1 if inlist(religion, 1000)
replace relcat=2 if inrange(religion, 2000, 2900)
replace relcat=3 if inlist(religion, 4000)
replace relcat=4 if inlist(religion, 3000, 3100)
replace relcat=5 if relcat==. & religion~=.
replace relcat=. if inlist(religion, 9998, 9999)
graph pie country, over(relcat) by(country) plabel(_all name) by(country, legend(off)) 
label define relcat 1 "Muslim" 2 "Christianity" 3 "Hindu" 4 "Buddhist" 5 "Other"
graph pie country, over(relcat) by(country) plabel(_all name) by(country, legend(off)) 
label values relcat RELCAT;
label define relcat 1 "Muslim" 2 "Christianity" 3 "Hindu" 4 "Buddhist" 5 "Other"
label define relcat 1 "Muslim" 2 "Christianity" 3 "Hindu" 4 "Buddhist" 5 "Other"; label values relcat RELCAT
order relcat religion
label define RELCAT 1 "Muslim" 2 "Christianity" 3 "Hindu" 4 "Buddhist" 5 "Other"; label values relcat RELCAT
label define RELCAT 1 "Muslim" 2 "Christian" 3 "Hindu" 4 "Buddhist" 5 "Other"
label values relcat RELCAT
order country year age pregtermin relcat religion cheb wantedlc unmet knowfp unmetneed unmetneed2 unmetneed3 fpknotyp fplchdesire
graph pie country, over(relcat) by(country) plabel(_all name percent, color(grey)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name, color(grey)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name, color(1 Lavender)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name, color(Lavender)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel({_all name}{percent}, [color(1 Lavender)]) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel({_all name} {percent}, [color(1 Lavender)]) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name, color(1 Lavender)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) pie(1 name, color(red)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) pie(1, color(red)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie (1, color(lavender)) pie(2, lime) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie (1, color(lavender)) pie(2, color(lime)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(lavender)) pie(2, color(lime)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(ltblue)) pie(2, color(mint)) pie(3, color(sand)) pie(4, color(teal)) pie (5, color(black)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(ltblue)) pie(2, color(mint)) pie(3, color(sand))  by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(ltblue)) pie(2, color(lavender)) pie(3, color(sand)) pie(4, color(teal))  by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(cyan)) pie(2, color(sunflowerlime)) pie(3, color(olive)) pie(4, color(navy))  by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(cyan)) pie(2, color(sunflowerlime)) pie(3, color(khaki)) pie(4, color(navy))  by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(sandb)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose))  by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(sandb)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose)) background(color(eggshell)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(sandb)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose)) bgcolor(eggshell) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(sandb)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose)) bgcolor(eggshell) graphregion(fcolor(eggshell)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(255255255)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(eggshell)) pie(3, color(khaki)) pie(4, color(erose)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(blueishgray)) pie(3, color(khaki)) pie(4, color(erose)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(bluishgray)) pie(3, color(lightkhaki)) pie(4, color(erose)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(bluishgray)) pie(3, color(ltkhaki)) pie(4, color(erose)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(bluishgray)) pie(3, color(erose)) pie(4, color(ltkhaki)) by(country, legend(off)) 
graph pie country, over(relcat) by(country) plabel(_all name) pie(1, color(dimgray)) pie(2, color(bluishgray)) pie(3, color(erose)) pie(4, color(ltkhaki)) pie(5, color(teal)) by(country, legend(off)) 
