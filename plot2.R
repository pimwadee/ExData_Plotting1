plot(power$Datetime,power$Global_active_power,type="line",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png")
dev.off()