#setwd("F:/data science/ExploratoryDataAnalysis/")

#read complete file
#alldata <- read.csv("household_power_consumption.txt", sep=";", quote="\"", na.strings="?")
#alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")

#subset
data <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## datetime format
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

#par(mfrow=c(2,2))
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data,{
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
plot(data$Voltage~data$Datetime, type="l",ylab="Voltage", xlab="datetime")

plot(data$Sub_metering_1~data$Datetime, type="l",ylab="Energy sub metering", xlab="")
lines(data$Sub_metering_2~data$Datetime, type="l",col="red")
lines(data$Sub_metering_3~data$Datetime, type="l",col="blue")
legend("topright",col=c("black","red","blue"),bty="n",lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(data$Global_reactive_power~data$Datetime, type="l",ylab="Global_reactive_power", xlab="datetime")
})
dev.copy(png, file ="plot4.png",width=480) 
dev.off()