##set working directory and place the file household_power_consumption in it.
mydata<-read.table("household_power_consumption.txt",header = T,sep = ";",stringsAsFactors = F,dec = ",")
##as.Date(mydata$Date)
mydata1 <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
x=as.numeric(mydata1$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(x,col = "red",xlab="Global Active Power(kilowatts)",ylab="Frequqncy",main = "Global Active Power")
dev.off()