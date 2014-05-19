# Assignment 1
# Mean of pollutant in files, ignoring NA values 
# directory <- "/home/syamanthaka/Documents/Coursera/R Programming/Week 2/specdata"
pollutantmean <- function(directory = "specdata", pollutant, id = 1:332) {
    
    directory <- paste("/home/syamanthaka/Documents/Coursera/R Programming/Week 2/", directory, sep="")
    files <- list()
    for(i in id){
        filename <- paste(directory, "/",sprintf('%03d',i),".csv", sep="")
        files <- c(files,filename)
    }
    
    working_data <- do.call("rbind", lapply(files, read.csv, header = TRUE))
    if(pollutant == 'nitrate') {
        polu <- 3
    } else {
        polu <- 2
    }
    pol_list <- working_data[,polu]
    pol_list <- pol_list[!is.na(pol_list)]
    pol_mean <- mean(pol_list)
    pol_mean
    #cat("The mean of ", pollutant, " for file(s) ", id, " in ", directory, " is ", pol_mean)
    
}