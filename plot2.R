#setwd("F:/data science/ExploratoryDataAnalysis/")

#read complete file
alldata <- read.csv("household_power_consumption.txt", sep=";", quote="\"", na.strings="?")
alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")

#subset
data <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## datetime format
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file ="plot2.png") 
dev.off()