n=10
n
mu=577
mu
x=c(578, 572, 570, 568, 572, 570, 572, 596,584)
x
x_bar=mean(x)
x_bar
S=sd(x)
S
alpha <- 0.05
alpha
t_test =(x_bar-mu)/(S/sqrt(n))
t_test
t_cal=abs(t_test)
t_cal
df=n-1
df
t_tab=round(qt(alpha/2,df, lower.tail=F),2)
t_tab
p_value =2*pt(t_cal,df, lower.tail=F )
p_value
if (t_cal < t_tab) {
  print("Accept the null hypothesis.")
} else {
  print("Reject the null hypothesis in favour of the alternative hypothesis.")
}
if (p_value < alpha) {
  cat("Reject the null hypothesis in favour of the alternative hypothesis.")
} else {
  cat("Do not reject the null hypothesis.")
}
cat("t-statistic value is:", t_cal, "\n")
cat("t-Critical value is:", t_tab, "\n")
cat("P-value is:", p_value, "\n")