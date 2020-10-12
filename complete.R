complete <- function( directory, id = 1:332) {
  comp.case <- 0
  a <- 1
  df <- data.frame (id, nobs = rep(0, times = length(id)))
  for (i in id) {
    id <- if (i < 10) {paste ("00",i,sep = "")}
    else if (i < 100) {paste ("0",i,sep = "")}
    else {i}
    path <- paste("C:/Users/huguel/Documents/Training/R/Coursera/R Programmig/", directory,"/",id,".csv",sep = "")
    doc <- read.csv (path)
    df[a,2] <- sum(complete.cases(doc))
    a <-a+1
  }
df
}

#complete("specdata", 1:332)   
#complete("specdata", c(2, 4, 8, 10, 12))
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])