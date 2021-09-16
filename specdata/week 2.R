temp = list.files(pattern="*.csv")
pollutantmean<-function(directory, pollutant, id = 1:332){
  if(pollutant=='sulphate'){
      r<-temp[id]
      myfiles = lapply(r, read.csv)
      a<-do.call(rbind.data.frame, myfiles)  
      m<-a[ ,2]
      bad<-is.na(m)
      n<-m[!bad]
      print(mean(n))
  }
  if(pollutant=='nitrate'){
    r<-temp[id]
    myfiles = lapply(r, read.csv)
    a<-do.call(rbind.data.frame, myfiles)  
    m<-a[ ,3]
    bad<-is.na(m)
    n<-m[!bad]
    print(mean(n))
  }
}