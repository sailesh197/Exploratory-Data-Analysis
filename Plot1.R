##Plot1 Global Active Power
## read the dat from the given .txt file.
epDt <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
## extract the data of 1/2/2007-2/2/2007 from the table
sbDt <- epDt[epDt$Date %in% c("1/2/2007","2/2/2007") ,]

## construct the histogram of the extracted data
hist(as.numeric(sbDt$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
## copy the histogram to plot1.png file
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()