n<-64 
n
mu<-51.4
mu 
sigma<-6.8
sigma
se<-sigma/sqrt(n) 
se
P_xbar_52.9<-pnorm(q=52.9, mean=mu, sd=se, lower.tail = F) 
P_xbar_52.9 
lower_bound=mu-3*se 
lower_bound 
upper_bound=mu+3*se
upper_bound
x=seq(from= lower_bound, to=upper_bound, by=0.1)
x
y=dnorm(x, mean=mu, sd =se) 
y
par(mfrow=c(3,1)) 
plot(x, y, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(xbar>52.9)", lwd=3)
x=seq(from= 52.9, to=upper_bound, by=0.1)
y=dnorm(x, mean = mu, sd = se)
polygon(c(52.9,x, upper_bound),c(0,y,0),col="blue")
P_xbar_50.5_52.3<-pnorm(q=52.3,mean=mu,sd=se,lower.tail=T)-pnorm(50.5,mean=mu,sd=se,lower.tail=T)
P_xbar_50.5_52.3 
x1=seq(from= lower_bound, to=upper_bound, by=0.1) 
x1 
y1=dnorm(x1, mean=mu, sd =se) 
y1 
plot(x1, y1, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(50.5<xbar<52.3)", lwd=3)
x1=seq(from=50.5, to=52.3, by=0.1)
y1=dnorm(x1, mean = mu, sd = se)
polygon(c(50.5,x1,52.3),c(0,y1,0),col="blue")
P_xbar_50.6<-pnorm(q=50.6, mean=mu, sd=se, lower.tail = T)
P_xbar_50.6
x2=seq(from= lower_bound, to=upper_bound, by=0.1)
x2
y2=dnorm(x2, mean=mu, sd =se) 
y2 
plot(x2, y2, type = "l", lty = 1, col = "blue", xlab = "X-Values", ylab = "Density Values", main = "Normal Curve of P(xbar<50.6)", lwd=3) 
 
x2=seq(from=50.5, to=52.3, by=0.1) 
y2=dnorm(x1, mean = mu, sd = se) 
polygon(c(lower_bound,x2,52.3),c(0,y2,0),col="blue")

cat("(i) The probability that the mean of the sample will exceed 52.9 is :", round(P_xbar_52.9,4), "\n")
cat("(ii) The probability that the mean of the sample will fall between 50.5 and 52.3 is:", round(P_xbar_50.5_52.3,4), "\n")
cat("(iii) The probability that the mean of the sample will be less than 50.6 is :", round(P_xbar_50.6,4), "\n")