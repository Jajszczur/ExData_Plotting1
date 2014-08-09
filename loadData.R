## Loads the Household Power Consumption dataset

library(data.table)

## Downloads the zip file, unzips it and loads the data
loadData <- function() {
  if(!file.exists('data')){ dir.create('data') }
    if(!file.exists('./data/household_power_consumption.txt')){
      fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
      fileName <- "./data/household_power_consumption.zip"
      download.file(fileUrl, destfile=fileName, method='curl')
      unzip(fileName, exdir="data")
    }
  DT <- read.table("./data/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  DT$Date <- as.Date(DT$Date, format="%d/%m/%Y")
  DT$Time <- strptime(paste(DT$Date, DT$Time), format="%Y-%m-%d %H:%M:%S")
  data <- DT[DT$Date=='2007-02-01' | DT$Date=='2007-02-02',]
  data
}
