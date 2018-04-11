

library(lubridate)

setwd("C:\\Users\\hassan\\Desktop\\TEST")
dir()


#READING  The text file
dev.off()
data<- read.table("./household_power_consumption.txt",header = T,sep=";") 
sd<-subset(data,Date=="1/2/2007"| Date=="2/2/2007")
#---------------------------------

datetime <- strptime(paste(sd$Date,sd$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

SM1<-as.numeric(as.character(sd$Sub_metering_1))
SM2<-as.numeric(as.character(sd$Sub_metering_2))
SM3<-as.numeric(as.character(sd$Sub_metering_3))


plot(datetime,SM1,type="l",xlab = " ",ylab="Energy sub metering ",col="black")
lines(datetime,SM2,type="l",xlab = " ",col="red")
lines(datetime,SM3,type="l",xlab = " ",col="blue")

legend("topright",legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col=c("black","red", "blue"),lty=1)



dev.copy(png,file = "plot3.png",width = 480, height = 480)
dev.off()



