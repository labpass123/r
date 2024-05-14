x1=200-18
x1
n1=200
n1
x2=600-25
x2
n2=600
n2
p1=x1/n1
p1
p2=x2/n2
p2
alpha1=5/100
alpha1
test_1_percent=prop.test(x=c(x1,x2),n=c(n1,n2),alternative ="less",conf.level = 0.95)
test_1_percent
test_statistic_z_value=sqrt(test_1_percent$statistic)
test_statistic_z_value
p_value=round(test_1_percent$p.value,2)
p_value
cirtical_z_value=round(qnorm(1-alpha1),2)
cirtical_z_value
if(test_statistic_z_value<cirtical_z_value){"H0 is accepted"}else{"H0 is rejected"} 
if(p_value<alpha1){"H0 is rejected"}else{" H0 is accepted"}