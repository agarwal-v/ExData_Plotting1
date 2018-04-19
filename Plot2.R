source('readPowerData.R')
#Read Power data
filtData <- readPowerData()
png(filename = "Plot2.png", width = 480, height = 480)
with( filtData, plot(Time, Global_active_power, "l", xlab = "",
                     ylab="Global Active Power (kilowatts)"))
dev.off()
