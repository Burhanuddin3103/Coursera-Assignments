temp = list.files(pattern="*.csv")
complete<-function(directory, id){
    a<-read.csv(temp[id])
    x<-a[ ,2]
    y<-a[ ,3]
    z<-0
    for(j in 1:length(x)){
      b<-is.na(x[j])
      c<-is.na(y[j])
      if(b==FALSE && c==FALSE){
        z<-z+1
        q = z
      }
    }
  return(q)
  }
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332)
use <- sample(332, 10)
print(cc[use])