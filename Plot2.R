Plot2 <- function() {
  # Set Working Directory
  setwd("/Users/student/Documents/Learning/R/ExData_Plotting1")
  
  # Read File
  datafile <- paste(getwd(), "/household_power_consumption.txt", sep = "")
  power_consumption <- read.table(datafile, header = TRUE, sep = ";", na.strings = "?")
  
  # Create Subset of File for Feb 1, 2007 and Feb 2, 2007
  two_day_consumption <- subset(power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
  
  # Create datetime vector for Feb 1, 2007 and Feb 2, 2007
  datetime <- as.POSIXct(paste(two_day_consumption$Date, two_day_consumption$Time), format = "%d/%m/%Y %H:%M:%S")
  
  # Create a png device
  png(filename = "Plot2.png")
  
  # Create plot
  plot(datetime, two_day_consumption$Global_active_power,type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
  
  # Turn device off
  dev.off()
}