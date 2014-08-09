## Creates 4 plots: Global Active Power, Voltage, Sub Metering and Global Reactive Power in Time

source('loadData.R')

## Loads data, opens a png file and saves the plots in it
createPlot4 <- function() {
  data <- loadData()
  
  png(filename="plot4.png", width=480, height=480, units="px", bg="transparent")
  par(mfrow = c(2, 2))

  ## Global Active Power plot
  plot(data$Time, data$Global_active_power, type="l", ylab='Global Active Power', xlab='')

  ## Voltage plot
  plot(data$Time, data$Voltage, type="l", ylab='Voltage', xlab='datetime')
  
  ## Sub Metering plot
  plot(data$Time, data$Sub_metering_1, type='n', ylab='Energy sub metering', xlab='')
  lines(data$Time, data$Sub_metering_1)
  lines(data$Time, data$Sub_metering_2, col='red')
  lines(data$Time, data$Sub_metering_3, col='blue')
  legend('topright', bty="n", lty=c(1,1,1), col=c('black', 'red', 'blue'), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

  ## Gloabl Reactive Power plot
  plot(data$Time, data$Global_reactive_power, type="l", ylab='Global_reactive_power', xlab='datetime')
  
  dev.off()
}

createPlot4()