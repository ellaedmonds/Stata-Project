#delimit;

*starts off the program;
clear; cap log close; set more off; set logtype text;

*open data;
use  dhsdata, clear;
	

summ unmet* knowfp pregtermin; 

*unmet need defined if sexually active and of birthing age;
g unmet_d= inrange(unmetneed3,1,2);
replace unmet_d=. if inlist(unmetneed3, 0, 6, 7, 8, 9) | unmetneed3==.;

replace unmet_d=1 if inlist(unmetneed, 10, 11, 12) & unmet_d==.;
replace unmet_d=0 if inlist(unmetneed, 20, 21, 22, 30, 31, 32, 60, 61) & unmet_d==.;
replace unmet_d=1 if inlist(unmetneed2, 10, 11, 12) & unmet_d==.;
replace unmet_d=0 if inrange(unmetneed2, 20, 51) & unmet_d==.;
label var unmet_d "Unmet need for FP";

preserve;

*generate the religion pie charts;

*target countries by their numeric code (STATA doesn't work with string data);
keep if inlist(country, 50, 404, 818, 800);

*here I create a new religion variable;
g relcat=1 if inlist(religion, 1000);
replace relcat=2 if inrange(religion, 2000, 2900);
replace relcat=3 if inlist(religion, 4000);
replace relcat=4 if inlist(religion, 3000, 3100);
replace relcat=5 if relcat==. & religion~=.;
replace relcat=. if inlist(religion, 9998, 9999);


label define RELCAT 1 "Muslim" 2 "Christian" 3 "Hindu" 4 "Buddhist" 5 "Other";
label values relcat RELCAT;

graph pie perweight if country==50, over(relcat);


tab religion relcat;

qui tab relcat, gen(rc_);
cap drop rc_6;
label var rc_1 "Muslim"; label var rc_2 "Christian"; label var rc_3 "Hindu"; label var rc_4 "Buddhist"; label var rc_5 "Other";
foreach var of varlist rc_* {;
replace `var'=. if relcat==.;
};

graph pie rc_* [pw=perweight] if country==50, plabel(_all name) legend(off) plotregion(lstyle(none))
title("Religion Composition of Population")
note("Source: Bangaldesh DHS");

graph export bang_rel.tif, replace;
graph save bang_rel, replace;
	
	graph pie rc_* [pw=perweight] if country==404, plabel(_all name) legend(off) plotregion(lstyle(none))
title("Religion Composition of Population")
note("Source: Kenyan DHS");

graph export kenya_rel.tif, replace;
graph save kenya_rel, replace;
	
	graph pie rc_* [pw=perweight] if country==818, plabel(_all name) legend(off) plotregion(lstyle(none))
title("Religion Composition of Population")
note("Source: Egypt DHS");

graph export egypt_rel.tif, replace;
graph save egypt_rel, replace;
	
	graph pie rc_* [pw=perweight] if country==800, plabel(_all name) legend(off) plotregion(lstyle(none))
title("Religion Composition of Population")
note("Source: Uganda DHS");

graph export uganda_rel.tif, replace;
graph save uganda_rel, replace;

restore;

*Multi-country chart with unmet need and terminations;
g pers=1;
preserve;

*country means and population counts (both in each individual year);
collapse (mean) unmet_d pregterm (sum) pers [pw=perweight], by(country year);
drop if pregterm==0;
foreach var of varlist unmet_d pregterm {;
replace `var'=`var'*100;
};
label var pregterm " ";
label var unmet_d " ";

g clabel= country if inlist(country, 50, 404, 818, 800);
label values clabel COUNTRY;


twoway 
(scatter pregterm unmet_d, m(i) mlabel(clabel)
 l1("% Ever Terminated Pregnancy") b1(""% of Sexually Active with Unmet Need for FP""))
 (lpoly pregterm unmet_d , legend(off))
 (scatter pregterm unmet_d [aw=pers], msymbol(circle_hollow) );
 
twoway 
(lowess pregterm unmet_d if country==50,  
 l1("% Ever Terminated Pregnancy") b1("% of Sexually Active with Unmet Need for FP")
 lpattern(solid)
 )
 (lowess pregterm unmet_d if country==404, lpattern(dash))
 (lowess pregterm unmet_d if country==818, lpattern(dot))
 (lowess pregterm unmet_d if country==800, lpattern(dashdot))
 (scatter pregterm unmet_d [aw=pers], msymbol(circle_hollow) legend(off))
 ;

restore;

*bangladesh time trends;

*keep if bangladesh;
*I described the data set with the command describe;
	*this let me find out what value labels were;
	*I typed: "label list COUNTRY" to find out what bangladesh's country id was (this is also what i did when I was first working with the religion data);


keep if country==50; *could reproduce for any country by changing this;

reg unmet_d i.year [pw=perweight], robust;
margins i.year;
marginsplot, l1("% of Sexually Active with Unmet Need for FP") ;


reg pregterm i.year [pw=perweight], robust;
margins i.year;
marginsplot, l1("% Ever Terminated Pregnancy") ;


