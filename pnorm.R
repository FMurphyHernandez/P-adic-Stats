pnorm<-function(x,p=2){
PRIMES<-read.csv('100k.csv',header=FALSE)
if(!(p %in% PRIMES))
stop('Not a prime')
return(p^(-pval(x,p)))
}
