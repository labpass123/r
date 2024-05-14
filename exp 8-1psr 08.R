n =50 
n 
x_bar =1180 
x_bar 
mu = 1200 
mu 
sigma = 100 
sigma 
alpha <- 0.05 
alpha 
Z_test =(x_bar-mu)/(sigma/sqrt(n)) 
Z_test 
Z_cal=abs(Z_test) 
Z_cal 
Z_tab=round(qnorm(1-alpha/2),2) 
Z_tab 
p_value =2*pnorm(Z_cal, lower.tail=F ) 
p_value 
if (Z_cal <Z_tab) {print("Accept the null hypothesis Ho.")} else {print("Reject the null hypothesis Ho in favour of 
the alternative hypothesis H1.")} 
if (p_value <alpha) {cat("Reject the null hypothesis Ho in favour of the alternative hypothesis H1.")} else 
{cat("Do not reject the null hypothesis in favour of the alternative hypothesis H1.")} 
# Print results of conclusion 
cat("Z-statistic value is:", Z_cal, "\n") 
cat("Z-critical value is:", Z_tab, "\n") 
cat("P-value is:", p_value, "\n")