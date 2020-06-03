LoadData <- function() {
  setwd("/Users/student/Documents/Learning/R/ExData_Plotting1")
  datafile <- paste(getwd(), "/household_power_consumption.txt", sep = "")
  power_consumption <- read.table(datafile, header = TRUE, sep = ";", na.strings = "?")
  two_day_consumption <- subset(power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

  return(two_day_consumption)
}