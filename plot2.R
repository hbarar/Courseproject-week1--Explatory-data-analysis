

library(lubridate)

setwd("C:\\Users\\hassan\\Desktop\\TEST")
dir()


#READING  The text file
dev.off()
data<- read.table("./household_power_consumption.txt",header = T,sep=";") 
sd<-subset(data,Date=="1/2/2007"| Date=="2/2/2007")
#---------------------------------
dev.off()
datetime <- strptime(paste(sd$Date,sd$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GW<-as.numeric(as.character(sd$Global_active_power))


plot(datetime,GW,type="l",
     xlab = " ",ylab="Global Active Power (kilowatts)",main="Global Active Power (kilowatts)")

dev.copy(png,file = "plot2.png",width = 480, height = 480)
dev.off()


dev.copy(png,file = "plot2.png",width = 480, height = 480)
dev.off()

