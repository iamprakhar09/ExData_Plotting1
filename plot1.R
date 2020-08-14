data<-read.delim("household_power_consumption.txt",sep = ";")
df<-data[my_data$Date %in% c("1/2/2007","2/2/2007"),]
gr<-as.numeric(df$Global_active_power)
png("plot1.png",width=480,height = 480)
hist(gr,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
