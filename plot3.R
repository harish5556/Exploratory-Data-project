##set working directory and place the file household_power_consumption in your current working directory
mydata<-read.table("household_power_consumption.txt",header = T,sep = ";",stringsAsFactors = F,dec = ",")
mydata1=mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
png("plot3.png",width = 480,height = 480)
with(mydata1,plot(datetime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering"))
with(mydata1,points(datetime,Sub_metering_2,type = "l",col = "orange"))
with(mydata1,points(datetime,Sub_metering_3,type = "l",col = "blue"))
legend("topright",pch= "_",col = c("black","orange","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()