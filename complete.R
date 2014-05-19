# Assignment 1
# Count of completely observed cases
# directory <- "/home/syamanthaka/Documents/Coursera/R Programming/Week 2/specdata"
complete <- function(directory = "specdata", id = 1:332) {
    directory <- paste("/home/syamanthaka/Documents/Coursera/R Programming/Week 2/", directory, sep="")
    result <- NULL
    for(i in id){
        filename <- paste(directory, "/",sprintf('%03d',i),".csv", sep="")
        working_data <- read.csv(filename)
        count <- nrow(na.omit(working_data))
        result = rbind(result, data.frame(id=i,nobs=count))
    }
    result
}