install.packages('MASS')
library('MASS')

pval<-function(x,p){url<-'http://primes.utm.edu/lists/small/10000.txt'
  PRIMES<-read.table(url, sep=',', header=T)
  x1<-MASS:::.rat(x)$rat[1]
  x2<-MASS:::.rat(x)$rat[2]
  c1<-x1%%p
  c2<-x2%%p
  if(c1!=0 & c2!=0)
  return(0)
  if(c1==0){
    n=1
    while(c1==0){
      n=n+1
      c1=x1%%(p^n)
      }
     return(n-1)  
    }
  else{
  n=1
  while(c2==0){
      n=n+1
      c2=x2%%(p^n)
      }
     return(-n+1)   
    }
  }
