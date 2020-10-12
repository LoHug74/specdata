pollutantmean <- function( directory, pollutant, id = 1:332) {
  mean_val_id <- 0
  mean_nb_id <- 0
  poll <- if (pollutant == "sulfate") {2} else {3}
  
  for (i in id) {
        id <- if (i < 10) {paste ("00",i,sep = "")}
        else if (i < 100) {paste ("0",i,sep = "")}
        else {i}
        path <- paste("C:/Users/huguel/Documents/Training/R/Coursera/R Programmig/", directory,"/",id,".csv",sep = "")
        doc <- read.csv (path)
        ds <- doc[,poll]
        mean_val_id <- mean_val_id + sum(ds,na.rm = TRUE)
        mean_nb_id <- mean_nb_id + sum(!is.na(ds))
        }
  mean_val_id / mean_nb_id
 }


#pollutantmean("specdata", "nitrate")