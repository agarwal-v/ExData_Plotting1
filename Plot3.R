source('readPowerData.R')
#Read Power data
filtData <- readPowerData()
png(filename = "Plot3.png", width = 480, height = 480)
with( filtData, plot(Time, Sub_metering_1, "l", xlab = "",
                     ylab="Energy sub metering", col = "black"))
with( filtData, lines(Time, Sub_metering_2, col = "red"))
with( filtData, lines(Time, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
