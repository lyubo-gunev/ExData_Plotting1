sourcedata2 <- "./data/household_power_consumption.txt"

sourcedata <- read.table(sourcedata2, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

data <- subset(sourcedata, Date == "1/2/2007" | Date == "2/2/2007")

##Get values

xaxiss <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
yaxiss1 <- as.numeric(data$Sub_metering_1)
yaxiss2 <- as.numeric(data$Sub_metering_2)
yaxiss3 <- as.numeric(data$Sub_metering_3)

yaxiss4 <- as.numeric(data$Global_active_power)
yaxiss5 <- as.numeric(data$Global_reactive_power)
yaxiss6 <- as.numeric(data$Voltage)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
png("plot4.png", width=480, height=480)

## Plot 1
plot(xaxiss, yaxiss4, type="l", xlab="", ylab="Global Active Power (kilowatts)")

##Plot 2
plot(xaxiss, yaxiss6, type="l", xlab="", ylab="Voltage")

##Plot 3

plot(xaxiss, yaxiss1, type="l", xlab="", ylab="Energy sub metering")
lines(xaxiss, yaxiss2, type="l", col= 'red')
lines(xaxiss, yaxiss3, type="l", col= 'blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

##Plot 4
plot(xaxiss, yaxiss5, type="l", xlab="", ylab="Global_reactive_power")

dev.off()

##I am sorry. I couldn't get it to print the plot.
##Unfortunately, I ran out of time to fix it.









