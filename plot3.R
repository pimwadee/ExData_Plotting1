plot(power$Datetime,power$Sub_metering_1,type="line",xlab="",ylab="Energy sub metering")
points(power$Datetime,power$Sub_metering_2,type="line",col="red")
points(power$Datetime,power$Sub_metering_3,type="line",col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))

dev.copy(png,file="plot3.png")
dev.off()