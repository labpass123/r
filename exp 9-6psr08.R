x1=c(40,70,45,120,35,55,77)
x1
y1=c(35,65,42,116,33,50,73)
y1
x1_bar=mean(x1)
x1_bar
y1_bar=mean(y1)
y1_bar
n1=7
n1
n2=7
n2
ttest=t.test(x=x1,y=y1,alternative ="greater",mu=0,paired=TRUE,var.equal=FALSE,conf.level=0.95)
ttest
testvalue=ttest$statistic
testvalue
alpha=0.05
alpha
df=n1+n2-2
df
stab=qt(alpha/2,df,lower.tail=F)
stab
p_value=pt(testvalue,df,lower.tail=F)
p_value
if(testvalue<stab){cat("h0 is accepted")}else{cat("ho is rejected")}
if(p_value<alpha){cat("h0 is rejected")}else{cat("h0 is accepted")}