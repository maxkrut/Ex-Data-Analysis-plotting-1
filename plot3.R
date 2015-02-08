source('main.R')

png(filename='output/plot3.png')
plot(times, x$Sub_metering_1, type='l',
     ylab='Energy sub metering',xlab='', bg="transparent")
lines(times, x$Sub_metering_2, col="red")
lines(times, x$Sub_metering_3, col="blue")
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'),lty='solid')
       
dev.off()

