download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","power.zip",method="curl")
unzip("power.zip") # This will produce a single file "household_power_consumption.txt"

read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=10) # Read file for 10 rows just to see the structure of data

power <- read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows=70000, na.strings="?") # Read only about 70000 rows to cover the dates we need in Feb 2007

power <- subset(power,Date=="1/2/2007" | Date=="2/2/2007") # Subset data

# Convert some data types in the data frame
power$Global_active_power <- as.numeric(power$Global_active_power)
power$Global_reactive_power <- as.numeric(power$Global_reactive_power)
power$Voltage <- as.numeric(power$Voltage)
power$Global_intensity <- as.numeric(power$Global_intensity)
power$Sub_metering_1 <- as.numeric(power$Sub_metering_1)
power$Sub_metering_2 <- as.numeric(power$Sub_metering_2)
power$Sub_metering_3 <- as.numeric(power$Sub_metering_3)

x <- paste(power$Date, power$Time)
power$Datetime <- strptime(x, "%d/%m/%Y %H:%M:%S")