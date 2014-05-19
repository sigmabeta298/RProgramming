# Assignment 3
# Correlation
source("/home/syamanthaka/devel/datascience/R/complete.R")
corr <- function(directory = "specdata", threshold = 0) {
    comp_df <- complete(directory)
    threshold_df <- subset(comp_df, nobs > threshold)
    
    files <- threshold_df[,1]
    result <- c()
    for(i in files) {
        working_data <- subset(get_working_data(i), select=c(sulfate,nitrate))
        result <- c(result, cor(working_data)[2])
    }
    
    result
    
}

get_working_data <- function(id){
    directory <- "/home/syamanthaka/Documents/Coursera/R Programming/Week 2/specdata"
    filename <- paste(directory, "/",sprintf('%03d',id),".csv", sep="")
    working_data <- read.csv(filename)
    working_data <- na.omit(working_data)
    working_data
}
