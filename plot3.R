#Plot3 
time = strptime(paste(dataset$Date,dataset$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
power = dataset$Global_active_power
subM1 = as.numeric(dataset$Sub_metering_1)
subM2 = as.numeric(dataset$Sub_metering_2)
subM3 = as.numeric(dataset$Sub_metering_3)

png("plot3.png",width = 480, height = 480)
plot(time, subM1,type = 'l')
lines(time,subM2, type = 'l', col = 'red')
lines(time,subM3, type = 'l', col = 'blue')
legend('topright',c('Sub_Metering1','Sub_Metering2','Sub_Metering3'),lty = 1, lwd = 2.5, col = c("black",'red','blue'))
dev.off()