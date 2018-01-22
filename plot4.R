par(mfcol=c(2,2))

# plot2 goes to top left
plot(power$Datetime,power$Global_active_power,type="line",xlab="",ylab="Global Active Power (kilowatts)")

# plot3 goes to bottom left
plot(power$Datetime,power$Sub_metering_1,type="line",xlab="",ylab="Energy sub metering")
points(power$Datetime,power$Sub_metering_2,type="line",col="red")
points(power$Datetime,power$Sub_metering_3,type="line",col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))

# top right
plot(power$Datetime,power$Voltage,type="line",xlab="datetime",ylab="Voltage")

# bottom right
plot(power$Datetime,power$Global_reactive_power,type="line",xlab="datetime",ylab="Global_reactive_power")

dev.copy(png,file="plot4.png")
dev.off()