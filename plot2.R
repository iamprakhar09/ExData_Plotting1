data<-read.delim("household_power_consumption.txt",sep = ";")
df<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
day<-strptime(paste(df$Date,df$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
gr<-as.numeric(df$Global_active_power)
png("plot2.png",width=480,height = 480)
plot(day,gr,type="l",xlab="",ylab = "Global Active Power(kilowatts)")
dev.off()
