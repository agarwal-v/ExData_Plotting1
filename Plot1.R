source('readPowerData.R')
#Read Power data
filtData <- readPowerData()
png(filename = "Plot1.png", width = 480, height = 480)
hist(filtData$Global_active_power, xlab="Global Active Power (kilowatts)",
     ylab="Frequency", main = "Global Active Power", col = "red")
dev.off()
