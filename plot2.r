##Plot2 Global Active Power
## read the dat from the given .txt file.
EpDT <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
## extract the data of 1/2/2007-2/2/2 007 from the table
sbDT <- EpDT[EpDT$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(sbDT$Date, sbDT$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(sbDT$Global_active_power)

## plot the data
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
## copy the plot to plot12.png file
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()