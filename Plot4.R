source('readPowerData.R')
#Read Power data
filtData <- readPowerData()
png(filename = "Plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with( filtData, {
  plot(Time, Global_active_power, "l", xlab = "",
       ylab="Global Active Power")
  plot(Time, Voltage, "l", xlab = "datetime")
  plot(Time, Sub_metering_1, xlab = "",
       ylab="Energy sub metering", type = "n")
  lines(Time, Sub_metering_1, col = "black")
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Time, Global_reactive_power, "l", xlab = "datetime")
  
})
dev.off()
