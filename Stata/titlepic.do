
/*              set 6 locals                       */
/* y-value for top of shaded area                  */  local yv .1        
/* first x-value                                   */  local x1 18.31        
/* second x-value                                  */  local x2 25        
/* color of bidirectional arrow; "none"=no arrow   */  local ac "orange"  
/* thickness of bidirectional arrow                */  local aw 1.5       
/* shading opacity %; 0=transparent                */  local ps 25     



tw fun y=chi2den(5,x), lp(solid) lwi(thick) recast(area)  ra(0 35) ///
|| fun y=chi2den(10,x), lp(solid) lwi(thick)  recast(area)  ra(0 35) ///
|| fun y=chi2den(15,x), lp(solid) lwi(thick)  recast(area)  ra(0 35) ///
plotr(marg(zero)) graphr(col(white) margin(small))  ///
legend(off) ///
xlab(, nogrid) ylab(, nogrid) yscale(off) xscale(off reverse) 


cd "C:\GIT\Quantiles\assets\media" 
local w = 640*5
local h = 360*5
graph export quantile-title.png, replace  width(`w') height(`h')
