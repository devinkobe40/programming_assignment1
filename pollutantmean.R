pollutantmean <- function(directory, pollutant, id = 1:332, removeNa = TRUE){
        
        for (i in id) {
                dir <- read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep=""))
        }
        
        if(pollutant == "nitrate"){
                nitrate <- dir[3]
                x <- ncol(nitrate)
                means <- numeric(x)
                
                
                means = colMeans(nitrate, na.rm = removeNa)
                means
        }
        else if(pollutant == "sulfate"){
                sulfate <- dir[2]
                y <- ncol(sulfate)
                means <- numeric(y)
                
                means = colMeans(sulfate, na.rm = removeNa)
                means
        }
}