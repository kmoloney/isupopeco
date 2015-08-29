par(mfrow=c(2,4))
s=seq(from=1.2,to=3.6, by= .4)
curve(0.8*x*(1-x),0,1, xlab="N(t)", ylab="N(t+1)",ylim=c(0,1))
text(.2,.95,"lambda=0.8")
abline(0,1,lty=2)
for (i in s)
{lambda=i
curve(lambda*x*(1-x),0,1, xlab="N(t)", ylab="N(t+1)",ylim=c(0,1))
abline(0,1,lty=2)
str=paste("lambda=",toString(i))

text(.2,.95,str)
} # draw y=x}

