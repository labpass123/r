n <- 26
n
x_bar <- 147
x_bar

mu <- 140
mu
s <- 16
s
alpha <- 0.05
alpha

t_test =(x_bar-mu)/(s/sqrt(n))
t_test
t_cal=abs(t_test)
t_cal

df=n-1
df

t_tab=round(qt(alpha/2, df, lower.tail=F),2)
t_tab

p_value =2*pt(t_cal,df, lower.tail=F )
p_value

if (t_cal < t_tab) {print("Accept the null hypothesis Ho.")} else {print("Reject the null hypothesis Ho.")}

if (p_value < alpha){cat("Reject the null hypothesis Ho.")} else {cat("Do not reject the null hypothesis Ho.")}

cat("t-statistic value is:", t_cal, "\n")
cat("t-Critical value is:", t_tab, "\n")
cat("P-value is:", p_value, "\n")
