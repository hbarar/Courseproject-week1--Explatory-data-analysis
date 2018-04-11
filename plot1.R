
setwd("C:\\Users\\hassan\\Desktop\\TEST")
dir()


# #READING  The text file
# 

data<- read.table("./household_power_consumption.txt",header = T,sep=";") 
sd<-subset(data,Date=="1/2/2007"| Date=="2/2/2007")
names(sd)
GAP<-as.numeric(as.character(sd$Global_active_power))
hist(GAP,xlab = "Global_active_power",ylab="Frequency",main="Global Active Power",col="red")
# 
# 
dev.copy(png,file = "plot1.png",width = 480, height = 480)

dev.off()
