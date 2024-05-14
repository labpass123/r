n<-100
n
p<-0.55
p
q<-1-p
q
CL=c(0.95,0.99)
CL
alpha=1-CL
alpha
Z_alphaby2_95=round(qnorm(1-(alpha[1]/2)),2)
Z_alphaby2_95
Z_alphaby2_99=round(qnorm(1-(alpha[2]/2)),2)
Z_alphaby2_99
CI_lower_limit = p-Z_alphaby2_95*sqrt(p*q/n)
CI_lower_limit 
CI_upper_limit = p+Z_alphaby2_95*sqrt(p*q/n) 
CI_upper_limit   
The_95_percent_confidence_interval=cbind(CI_lower_limit, CI_upper_limit ) 
The_95_percent_confidence_interval 
CI_lower_limit = p-Z_alphaby2_99*sqrt(p*q/n) 
CI_lower_limit 
CI_upper_limit = p+Z_alphaby2_99*sqrt(p*q/n) 
CI_upper_limit  
The_99_percent_confidence_interval=cbind(CI_lower_limit, CI_upper_limit ) 
The_99_percent_confidence_interval
cat("95% confidence  limits for the proportion of all voters in favor of this candidate:", round(The_95_percent_confidence_interval,4),"\n") 
cat("99% confidence limits for the proportion of all voters in favor of this candidate:", round(The_99_percent_confidence_interval,4),"\n")