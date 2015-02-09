setClass('_Date')

## setting as %d/%m/%Y format
setAs("character","_Date", function(from) as.Date(from,"%d/%m/%Y") )
x <- read.table("household_power_consumption.txt",na.strings='?', 
                            header=T, stringsAsFactors=F,sep=";", 
                            colClasses=c("_Date","character", rep("numeric",7)))

## subsetting
x <- x[x$Date=="2007-02-01"|x$Date=="2007-02-02",]

## combain date and time
times<-strptime(paste(x$Date,x$Time), "%Y-%m-%d %H:%M:%S")
