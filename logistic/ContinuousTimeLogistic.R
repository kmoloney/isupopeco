myLogistic<-function(N0=1,K=10,rd=0.2,t=10)
{
  (N0*exp(rd*t))/(1+(N0*(exp(rd*t)-1)/K))
}
  
# Change N0
N0=1
K=10
rd=0.2
tx=seq(0,50,0.2)  
y=myLogistic(N0,K,rd,t=tx)
plot(tx,y,type="l",ylim=c(0,20),xlab="time", ylab="Population size", main="Changing initial population size from 1 to 20 by 1")

for(N0 in 1:20 )
{y=myLogistic(N0,K,rd,tx)
 lines(tx,y)
}
text(45,3,"K=10, r=0.2")


# Change r
N0=1
K=100
rd=0.2
tx=seq(0,30,0.1)  
y=myLogistic(N0,K,rd,t=tx)
plot(tx,y,type="l",ylim=c(0,110),xlab="time", ylab="Population size", main="Changing r from  0 to 3 by 0.2")

for(rd in seq(0,3,0.2) )
{y=myLogistic(N0,K,rd,tx)
 lines(tx,y)
}
text(27,10,"N0=1, K=100")


