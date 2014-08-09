## Creates a plot of Global Active Power in Time

source('loadData.R')

## Loads data, opens a png file and saves the plot in it
createPlot2 <- function() {
  data <- loadData()
  png(filename="plot2.png", width=480, height=480, units="px")
  plot(data$Time, data$Global_active_power, type="l", ylab='Global Active Power (kilowatts)', xlab='')
  dev.off()
}

createPlot2()