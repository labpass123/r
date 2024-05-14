x=c(1050,980)
x
n1<-12
n1
n2<-10
n2
s1<-68
s1
s2<-74
s2
alpha<-0.05
alpha
t_stat<-(mean(x[1])-mean(x[2]))/(sqrt(s1^2/n1)+(s2^2/n2))
t_stat
df<-n1+n2-2
df
t_critical<-qt(1-alpha/2,df)
t_critical
p_value <- 2 * pt(t_stat, df) 
p_value
if (abs(t_stat) > t_critical) {
  cat("Reject null hypothesis (H0). There is a significant difference in average salaries between the two divisions.\n")
} else {
  cat("Fail to reject null hypothesis (H0). There is no significant difference in average salaries between the two divisions.\n")
}
if (p_value < alpha) {
  cat("Reject null hypothesis (H0). There is a significant difference in average salaries between the two divisions.\n")
} else {
  cat("Fail to reject null hypothesis (H0). There is no significant difference in average salaries between the two divisions.\n")
}
cat("Test statistic:", t_stat, "\n")
cat("Critical value:", t_critical, "\n")
cat("P-value:", p_value, "\n")