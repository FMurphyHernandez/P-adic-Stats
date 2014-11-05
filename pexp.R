pexp<-function(x,p=2){
PRIMES<-read.csv('100k.csv',header=FALSE)
if(!(p %in% PRIMES))
stop('Not a prime')
if(x==0)
return(0)
E<-c()
y<-x
n<-ceiling(log(abs(x)+1,p))-1
for(k in n:0){
  z<-(y-y%%(p^k))/(p^k)
  E<-c(z,E)
  y<-y-z*(p^k)
  }
  return(E)
}
