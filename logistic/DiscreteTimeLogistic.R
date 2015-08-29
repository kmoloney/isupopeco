#try git control
dlogistic<-function(K=100, rd=2,N0=5,t=50)
{alpha=1/K
  N<-c(N0,numeric(t))
  for(i in 1:t)N[i+1]<-{
    N[i]+rd*N[i]*(1-alpha*N[i])
  }
  return(N)
}

par(mfrow=c(2,3))
K=100
N0=.2
t=50
rd=1
tx=seq(1,t+1,1)
rd=1
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=1.0",cex=2)
rd=1.9
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=1.9",cex=2)
rd=2.2
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=2.2",cex=2)
rd=2.5
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=2.5",cex=2)
rd=2.7
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=2.7",cex=2)
rd=3
y=dlogistic(K,rd,N0,t)
plot(tx,y,type="l")
text(40,3,"r=3.0",cex=2)
par(mfrow=c(1,1))
