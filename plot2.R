source('main.R')

png(filename='output/plot2.png')
plot(times,x$Global_active_power,type="l", ylab="Global Active Power (kilowatts)",xlab='',bg = "transparent")

dev.off()
