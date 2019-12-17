pollutantmean<- function(directory,pollutant,id = 1:322){
  files<-list.files(directory)
  monitors<-numeric()
  for (i in id){
    df <- read.csv(file.path(directory,files[[i]]))
    df2 <- na.omit(df)
    for (x in df2[[pollutant]]){
      monitors <- c(monitors,x)
    }
  }
  mean(na.omit(monitors))
}
