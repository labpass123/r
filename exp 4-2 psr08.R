N=300
N
Mean=68
Mean
Sd=3
Sd
Px72=pnorm(q=72,mean=Mean,sd=Sd,lower.tail=F)
Px72
Apprx_no_of_students1=round(N*Px72)
Apprx_no_of_students1
Px_72=pnorm(q=72,mean=Mean,sd=Sd,lower.tail=T)
Px_72
Apprx_no_of_students2=round(N*Px_72)
Apprx_no_of_students2
Px_65_71=pnorm(q=71,mean=Mean,sd=Sd,lower.tail=T)- pnorm(q=65,mean=Mean,sd=Sd,lower.tail=T)
Px_65_71
Apprx_no_of_students3=round(N*Px_65_71)
Apprx_no_of_students3
cat("Approximate number of students have masses containing:\n")
cat("(i) greater than 72kgs:", round(Apprx_no_of_students1), "\n")
cat("(ii) less than or equal to72 kgs:", round(Apprx_no_of_students2), "\n")
cat("(iii) between 65 and 71 kgs:", round(Apprx_no_of_students3), "\n")