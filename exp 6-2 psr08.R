N<-1500 
N
Ns<-300 
Ns 
n<-36 
n  
mu<-22.4
mu 
sigma<-0.48 
sigma 
se<-sigma/sqrt(n) 
se

P_xbar_22.39_22.41<-pnorm(q=22.41,mean=mu,sd=se, lower.tail=T)-pnorm(q=22.39,mean=mu,sd=se, lower.tail=T)
P_xbar_22.39_22.41 
lower_bound=mu-3*se
lower_bound 
upper_bound=mu+3*se 
upper_bound 
x=seq(from=lower_bound, to=upper_bound, by=0.01)
x
y=dnorm(x, mean=mu, sd =se) 
y
par(mfrow=c(3,1))
plot(x, y, type="l", lty =1, col ="blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(22.39<xbar<22.41)", lwd=3) 

x=seq(from= 22.39, to=22.41, by=0.01)
y=dnorm(x, mean = mu,  se) 
polygon(c(22.39,x,22.41),c(0,y,0),col="blue")

ENS1<- Ns* P_xbar_22.39_22.41
ENS1
Apprx_ENS1<-round(ENS1)
Apprx_ENS1 

P_xbar_22.42<-pnorm(q=22.42,mean=mu,sd=se,lower.tail = F) 
P_xbar_22.42
x1=seq(from= lower_bound, to=upper_bound, by=0.01)
x1
y1=dnorm(x1, mean=mu, sd =se)
y1 
plot(x1, y1, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(xbar>22.42)", lwd=3) 

x1=seq(from=22.42, to=upper_bound, by=0.01)
y1=dnorm(x1, mean = mu, sd = se) 
polygon(c(22.42,x1, upper_bound),c(0,y1,0),col="blue")

ENS2<- Ns* P_xbar_22.42
ENS2 
Apprx_ENS2<-round(ENS2) 
Apprx_ENS2

P_xbar_22.37<-pnorm(q=22.37,mean=mu,sd=se, lower.tail = T)
P_xbar_22.37
x2=seq(from= lower_bound, to=upper_bound, by=0.01) 
x2 

y2=dnorm(x2, mean=mu, sd =se) 
y2
plot(x2, y2, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(xbar<22.37)", lwd=3)

x2=seq(from=lower_bound, to=22.37, by=0.01) 
y2=dnorm(x2, mean = mu, sd = se)
polygon(c(lower_bound,x2,22.37),c(0,y2,0),col="blue")

ENS3<-Ns* P_xbar_22.37 
ENS3
Apprx_ENS3<-round(ENS3)
Apprx_ENS3

P_xbar_22.38_22.41<-pnorm(q=22.38,mean=mu,sd=se,lower.tail=T)+pnorm(q=22.41,mean=mu,sd=se,lower.tail=F) 
P_xbar_22.38_22.41 
 
ENS4<-Ns* P_xbar_22.38_22.41
ENS4 
Apprx_ENS4<-round(ENS4)
Apprx_ENS4
# Display the results of conclusion
cat("(i) The expected number of samples having their means between 22.39 and 22.41is :", round(Apprx_ENS2), "\n")
cat("(ii) The expected number of samples having their means greater than 22.42 is:", round(Apprx_ENS2), "\n")
cat("(iii) The expected number of samples having their means less than 22.37 is :", round(Apprx_ENS3), "\n") 
cat("(iv) The expected number of samples having their means less than 22.38 or greater than 22.41 is :", round(Apprx_ENS4), "\n")