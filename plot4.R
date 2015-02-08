source('main.R')
png(filename='output/plot4.png')
par(mfrow=c(2,2))


plot(times, x$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')


plot(times, x$Voltage,
     xlab='datetime', ylab='Voltage', type='l')


plot(times, x$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(times, x$Sub_metering_2, col='red')
lines(times, x$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')


plot(times, x$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

dev.off()

