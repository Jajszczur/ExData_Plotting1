## Creates a histogram of Global Active Power

source('loadData.R')

## Loads data, opens a png file and saves the plot in it
createPlot1 <- function() {
  data <- loadData()
  png(filename="plot1.png", width=480, height=480, units="px")
  hist(data$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main="Global Active Power")
  dev.off()
}

createPlot1()