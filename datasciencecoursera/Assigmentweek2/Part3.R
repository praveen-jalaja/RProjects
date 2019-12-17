corr<-function(directory,threshold=0){
  rdf<-complete(directory)
  rdf2<-rdf[rdf$nobs>threshold,]
  rcor <- numeric()
  files<-list.files(directory)
  for (f in rdf2$id){
    df <- read.csv(file.path(directory,files[[f]]))
    df <- na.omit(df)
    rcor <- c(rcor,cor(x=df$sulfate,y=df$nitrate))
  }
  rcor
}