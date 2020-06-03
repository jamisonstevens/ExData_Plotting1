Plot1 <- function() {
  # Set Working Directory
  setwd("/Users/student/Documents/Learning/R/ExData_Plotting1")
  
  # Read File
  datafile <- paste(getwd(), "/household_power_consumption.txt", sep = "")
  power_consumption <- read.table(datafile, header = TRUE, sep = ";", na.strings = "?")
  
  # Create Subset of File for Feb 1, 2007 and Feb 2, 2007
  two_day_consumption <- subset(power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
  
  # Create a png device
  png(filename = "Plot1.png")
  
  # Create plot
  hist(two_day_consumption$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
  
  # Turn device off
  dev.off()
}