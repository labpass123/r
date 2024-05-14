n1=150 
n1
n2=200
n2
x1bar=2.56 
x1bar 
x2bar=2.87
s1=1.08 
s1
s2=1.28 
s2 
alpha=0.01 
alpha 
Z_test =(x1bar-x2bar)/sqrt((s1^2/n1)+(s2^2/n2))
Z_test
Z_cal=abs(Z_test)
Z_cal
Z_tab=round(qnorm(1-alpha),2)
Z_tab
p_value =pnorm(Z_cal, lower.tail=F )
p_value
if (Z_cal <Z_tab) {print("Accept the null hypothesis Ho.")} else {print("Reject the null hypothesis Ho in favour of the alternative hypothesis H1.")}
if (p_value <alpha) {cat("Reject the null hypothesis Ho in favour of the alternative hypothesis.")} else {cat("Do not reject the null hypothesis Ho.")}
cat("Z-statistic value is:", Z_cal, "\n")
cat("Z-Critical value is:", Z_tab, "\n")
cat("P-value is:", p_value, "\n")