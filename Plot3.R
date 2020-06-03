Plot3 <- function() {
  # Set Working Directory
  setwd("/Users/student/Documents/Learning/R/ExData_Plotting1")
  
  # Read File
  datafile <- paste(getwd(), "/household_power_consumption.txt", sep = "")
  power_consumption <- read.table(datafile, header = TRUE, sep = ";", na.strings = "?")
  
  # Create Subset of File for Feb 1, 2007 and Feb 2, 2007
  two_day_consumption <- subset(power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
  
  # Create datetime vector for Feb 1, 2007 and Feb 2, 2007
  datetime <- as.POSIXct(paste(two_day_consumption$Date, two_day_consumption$Time), format = "%d/%m/%Y %H:%M:%S")
  names(two_day_consumption)
  # Create a png device
  png(filename = "Plot3.png")
  
  # Create plot
  plot(datetime, two_day_consumption$Sub_metering_1,type="l", xlab = "", ylab = "Energy sub metering", col = "black")
  lines(datetime, two_day_consumption$Sub_metering_2, type="l", col = "red")
  lines(datetime, two_day_consumption$Sub_metering_3, type="l", col = "blue")
  
  # Add Legend to plot
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
  
  # Turn device off
  dev.off()
}