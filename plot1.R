
## The following line subselects the specifi dates.
data <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
## I didn't include script to check if the file in the WD because
## I had no time but still the logic is the same.

## Draw histogram, in red color with specific labels
hist(data$Global_active_power, col = 'red', main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", , ylab = "Frequency")

## Copy the plot to the WD.
dev.copy(png, file = "plot1.png")
dev.off() 