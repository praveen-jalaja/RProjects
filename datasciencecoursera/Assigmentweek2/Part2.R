complete<-function(directory,id=1:322){
  files<-list.files(directory)
  rdf<- data.frame(id=integer(),nobs=integer())
  for (f in id){
    df <- read.csv(file.path(directory,files[[f]]))
    rdf<-rbind(rdf,data.frame(id=f,nobs=sum(complete.cases(df))))
  }
  rdf
}