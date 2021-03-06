data<-read.delim("household_power_consumption.txt",sep = ";")
df<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
day<-strptime(paste(df$Date,df$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
sm1<-as.numeric(df$Sub_metering_1)
sm2<-as.numeric(df$Sub_metering_2)
sm3<-as.numeric(df$Sub_metering_3)
png("plot3.png",width=480,height = 480)
plot(day,sm1,col="black",type="l",xlab="",ylab = "Energy sub metering")
lines(day,sm2,type="l",col="red")
lines(day,sm3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
dev.off()
