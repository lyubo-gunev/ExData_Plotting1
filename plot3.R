
sourcedata <- "./data/household_power_consumption.txt"

data <- subset(sourcedata, Date == "1/2/2007" | Date == "2/2/2007")


## Get axis values
xaxiss <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
yaxiss1 <- as.numeric(data$Sub_metering_1)
yaxiss2 <- as.numeric(data$Sub_metering_2)
yaxiss3 <- as.numeric(data$Sub_metering_3)

## Compile plot
png("plot3.png", width=480, height=480)

plot(xaxiss, yaxiss1, type="l", xlab="", ylab="Energy sub metering")
lines(xaxiss, yaxiss2, type="l", col= 'red')
lines(xaxiss, yaxiss3, type="l", col= 'blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()





