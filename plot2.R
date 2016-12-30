##set working directory and place the file household_power_consumption in your current working directory
mydata<-read.table("household_power_consumption.txt",header = T,sep = ";",stringsAsFactors = F,dec = ",")
subsetdata=mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
datetime=strptime(paste(subsetdata$Date, subsetdata$Time,sep = " " ), "%d/%m/%Y %H:%M:%S")
x=as.numeric(subsetdata$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(datetime,x,type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")
dev.off()
