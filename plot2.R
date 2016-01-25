
sourcedata <- "./data/household_power_consumption.txt"

## The following line subselects the specifi dates.
data <- subset(sourcedata, Date == "1/2/2007" | Date == "2/2/2007")
## I didn't include script to check if the file in the WD because
## I had no time but still the logic is the same.


xaxiss <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
yaxiss <- as.numeric(data$Global_active_power)

dev.copy(png, file = "plot2.png")
plot(xaxiss, yaxiss, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

