#setwd("F:/data science/ExploratoryDataAnalysis/")

#read complete file
# alldata <- read.csv("household_power_consumption.txt", sep=";", quote="\"", na.strings="?")
# alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")
# 
# #subset
# data <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## datetime format
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

plot(data$Sub_metering_1~data$Datetime, type="l",ylab="Energy sub metering",xlab="")
lines(data$Sub_metering_2~data$Datetime, type="l",col="red")
lines(data$Sub_metering_3~data$Datetime, type="l",col="blue")
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2)

dev.copy(png, file ="plot3.png",width=640) 
dev.off()