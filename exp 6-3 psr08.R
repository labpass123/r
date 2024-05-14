x=c(40.2, 32.8, 38.2, 43.5, 47.6, 36.6, 38.4, 45.5, 44.4, 40.3, 34.6, 55.6, 50.9, 38.9, 37.8, 46.8, 43.6, 39.5, 49.9, 
    34.2)
x
n=20
n
Sigma_square=36
Sigma_square
sigma=sqrt(Sigma_square)
sigma
E_max=0.5
E_max
CL=c(0.95,0.99)
CL
alpha=1-CL
alpha
xbar = mean(x)
xbar
Z_alphaby2_95=round(qnorm(1-(alpha[1]/2)), 2)
Z_alphaby2_95
Z_alphaby2_99=round(qnorm(1-(alpha[2]/2)), 2)
Z_alphaby2_99
Se_95=Z_alphaby2_95*sigma/sqrt(n)
Se_95
Se_99=Z_alphaby2_99*sigma/sqrt(n)
Se_99
CI_lower_limit = xbar-Z_alphaby2_95*sigma/sqrt(n)
CI_lower_limit
CI_upper_limit = xbar+Z_alphaby2_95*sigma/sqrt(n)
CI_upper_limit 
The_95_percent_confidence_interval=cbind(CI_lower_limit, CI_upper_limit )
The_95_percent_confidence_interval
CI_lower_limit = xbar-Z_alphaby2_99*sigma/sqrt(n)
CI_lower_limit
CI_upper_limit = xbar+Z_alphaby2_99*sigma/sqrt(n)
CI_upper_limit 
The_99_percent_confidence_interval=cbind(CI_lower_limit, CI_upper_limit )
The_99_percent_confidence_interval
sample_size_n_95 = ((Z_alphaby2_95*sigma)/E_max)^2
sample_size_n_95
sample_size_n_99 = ((Z_alphaby2_99*sigma)/E_max)^2
sample_size_n_99
cat("95% confidence intervals of true population mean:", round(The_95_percent_confidence_interval,4),"\n")
cat("95% confidence intervals of true population mean:", round(The_99_percent_confidence_interval,4),"\n")
cat("the sample sizes (n) is:", round(c(sample_size_n_95, sample_size_n_99)), "\n")