#setwd("F:/data science/ExploratoryDataAnalysis/")

#read complete file
#alldata <- read.csv("household_power_consumption.txt", sep=";", quote="\"", na.strings="?")
#alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")

#subset
#data <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

hist(data$Global_active_power,col="red",xlab="Global Active Power (killowatts)",main="Global Active Power")


#with(data,plot(hist(data$Global_active_power,col="red",xlab="Global Active Power (killowatts)",main="Global Active Power")))

dev.copy(png, file ="plot1.png") 
dev.off()