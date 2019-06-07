use "/Users/ellaedmonds/Downloads/dhsdata (1).dta"
twoway (scatter pregtermin year)
proportion unmet perweight
tabulate country pregtermin
tabulate country pregtermin year
tabulate year pregtermin
tabulate year unmet
summarize
tabstat pregtermin, by(year)
tabstat pregtermin, statistics( count ) by(year)
tabstat pregtermin, statistics( count count ) by(year)
tabstat pregtermin, statistics( count sum ) by(year)
tabstat pregtermin unmet, statistics( count sum ) by(year)
tabstat pregtermin unmet, statistics( count ) by(year)
tabstat pregtermin~N&Y unmet, statistics( count ) by(year)
tabstat pregtermin unmet, statistics( count ) by(year)
tabstat pregtermin unmet, statistics( count skewness ) by(year)
tabstat pregtermin unmet, statistics( count ) by(year)
tabstat pregtermin unmet, statistics( count ) by(year) save
graph pie, over(religion) by(country, total)
graph pie, over(religion) by(country, total) plabel(_all) legend(off)
graph pie, over(religion) by(country, total) plabel(_all name) legend(off)
graph pie, over(religion) by(country, total) legend(off) pie(1, explode) plabel(1 percent) legend(off)
use "/Users/ellaedmonds/Downloads/dhsdata (1).dta"
tabulate country pregtermin
graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnancy, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from each country)) by(country, total) legend(off) pie(1, explode) plabel(1 percent)
graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
> y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
> each country)) by(country, total) legend(off) pie(2, explode) plabel(2 percent)
graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
> y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
> each country)) by(country, total) legend(off) pie(0, explode) plabel(0 percent)
graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
> y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
> each country)) by(country, total) legend(off) pie(1, explode) plabel(2 percent)
graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
> y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
> each country)) by(country, total) legend(off) pie(1, explode) plabel(1 percent)
. graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
> y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
> each country)) by(country, total) legend(off) pie(1, explode) plabel(1 percent)
 graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnanc
  y, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from 
   each country)) by(country, total) legend(off) pie(1, explode) plabel(1 percent)
   graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnancy, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from each country)) by(country, total) legend(off) pie(1, explode) plabel(1 percent)
   graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnancy, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from each country)) by(country, total) legend(off) pie(0, explode) plabel(0 percent)
   graph pie country, over(pregtermin) by(, title(Pie Charts Showing What Proportion of Women Have Terminated a Pregnancy, size(small) margin(zero) alignment(middle)) note(**Participents in the survery are randomly selected females from each country)) by(country, total) legend(off) pie(2, explode) plabel(2 percent)
   graph save Graph "/Users/ellaedmonds/Desktop/School/%abortionPies.gph"
   
