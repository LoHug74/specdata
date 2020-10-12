corr <- function( directory, treshold = 0) {
  ds <- complete("specdata", 1:332)
  ds_ok <- ds[ds$nobs>=treshold,]
  a <- 1
  vect <- numeric(nrow(ds_ok))
  id <- ds_ok$id
  
  for (i in id) {
    id <- if (i < 10) {paste ("00",i,sep = "")}
    else if (i < 100) {paste ("0",i,sep = "")}
    else {i}
    path <- paste("C:/Users/huguel/Documents/Training/R/Coursera/R Programmig/", directory,"/",id,".csv",sep = "")
    doc <- read.csv (path)
    vect [a]<- cor (x = doc[,2],y = doc[,3], use = "na.or.complete", method = "pearson") 
    a <- a+1
                                                            
  }
  vect
}

