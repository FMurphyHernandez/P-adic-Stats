pexp<-function(x,p=2){
PRIMES<-read.csv('100k.csv',header=FALSE)
if(!(p %in% PRIMES))
stop('Not a prime')
if(x==0)
return(0)
E<-c()
y<-x
n<-ceiling(log(abs(x),p))-1
for(k in n:1){
  E<-c(y%%(p^k),E)
  y<-y-(p^k)
  }
}
