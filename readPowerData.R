#Read Power data and filter for 2 dates
readPowerData <- function() {
  data <- read.table("household_power_consumption.txt",
                     header = TRUE, sep = ";", na.strings = "?")
  data$Time <- strptime(paste(data$Date, data$Time),
                        format = "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
  
  filtData <- subset(data, data$Date == as.Date("2007-02-01") | 
                       data$Date == as.Date("2007-02-02"))
  rm(data)
  filtData
}