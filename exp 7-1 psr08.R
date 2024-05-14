x=82
x
n=100
n
P=9/10
P
p=x/n
p
alpha1=1/100
alpha1
alpha2=5/100
alpha2
Test_1_percent=prop.test(x, n, p=P, alternative = "two.sided", conf.level =0.99)
Test_1_percent
Test_5_percent=prop.test(x, n, p=P, alternative = "two.sided", conf.level =0.95)
Test_5_percent
Test_statistic_Z_value1=sqrt(Test_1_percent$statistic)
Test_statistic_Z_value1
P_value1=round(Test_1_percent$p.value,2)
P_value1
Test_statistic_Z_value2=sqrt(Test_5_percent$statistic)
Test_statistic_Z_value2
P_value2=round(Test_5_percent$p.value,2)
P_value2
Critical_Z_value1=round(qnorm(1-alpha1/2),2)
Critical_Z_value1
Critical_Z_value2=round(qnorm(1-alpha2/2),2) 
Critical_Z_value2
if(Test_statistic_Z_value1< Critical_Z_value1){"H0 is accepted"}else{"H0 is rejected"}
if(Test_statistic_Z_value2< Critical_Z_value2){"H0 is accepted"}else{"H0 is rejected"}
if(P_value1< alpha1){"H0 is rejected"}else{"H0 is accepted"}
if(P_value2< alpha2){"H0 is rejected"}else{" H0 is accepted"}