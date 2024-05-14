n1=10
n1
n2=10
n2
x1=c(117,105,97,105,123,109,86,78,103,107)
x1
x_bar1=mean(x1)
x_bar1
x2=c(106,98,87,104,116,95,90,69,108,85) 
x2
x_bar2=mean(x2)
x_bar2
s1=sd(x1)
s1
s2=sd(x2)
s2
alpha=0.05
alpha
t_test=t.test(x=x1,y=x2,alternative="two.sided",conf.level=0.95)
t_test
testvalue=t_test$statistic
testvalue
df=n1+n2-2
df
t_tab=round(qt(alpha/2,df,lower.tail=F),2)
t_tab
p_value=2*pt(testvalue,df,lower.tail=F)
p_value
if(testvalue<t_tab){print("accept the null hypothesis ho")}else{print("reject the null hypothesis ho")}
if(p_value<alpha){cat("reject the null hypothesis ho")}else{cat(" acccept the null hypothesis ho")}
cat("t _stastic",testvalue,"\n")
cat("t_critical",t_tab,"\n")
cat("p_value",p_value,"\n")