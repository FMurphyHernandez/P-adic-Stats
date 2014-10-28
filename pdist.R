pdist<-function(x,y,p=2){
  PRIMES<-read.csv('100k.csv',header=FALSE)
  if(!(p %in% PRIMES))
  stop('Not a prime')
  if(length(x)!=length(y))
  stop('different length, vectors must have the same length')
  d<-0
  for(i in 1:length(x))
  d<-d+pnorm(x[i]-y[i],p)
  return(d)
  }
