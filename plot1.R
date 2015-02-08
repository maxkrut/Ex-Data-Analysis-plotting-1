source('main.R')
png(filename='output/plot1.png')
hist(as.numeric(x$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", main ="Global Active Power",bg = "transparent")
dev.off()
