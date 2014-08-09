## Creates a plot of Sub Metering data in Time

source('loadData.R')

## Loads data, opens a png file and saves the plot in it
createPlot3 <- function() {
  data <- loadData()
  png(filename="plot3.png", width=480, height=480, units="px")
  plot(data$Time, data$Sub_metering_1, type='n', ylab='Energy sub metering', xlab='')
  lines(data$Time, data$Sub_metering_1)
  lines(data$Time, data$Sub_metering_2, col='red')
  lines(data$Time, data$Sub_metering_3, col='blue')
  legend('topright', lty=c(1,1,1), col=c('black', 'red', 'blue'), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  dev.off()
}

createPlot3()