getwd()
dataset = read.csv("household_power_consumption.txt", header = TRUE, sep = ';')
View(dataset)
dataset = dataset[dataset$Date%in%c('1/2/2007','2/2/2007'),]
View(dataset)

#Plot4
time = strptime(paste(dataset$Date,dataset$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
activePower = as.numeric(dataset$Global_active_power)
reactivePower = as.numeric(dataset$Global_reactive_power)
vol = as.numeric(dataset$Voltage)

png("plot4.png",width = 480, height = 480)
par(mfrow = c(2,2))

plot(time,activePower,type = 'l',ylab = "Global Active Power",xlab = "")

plot(time, vol,type = 'l',ylab = "Voltage",xlab = "")

plot(time, subM1,type = 'l',ylab = "Energy Sub Metering",xlab = "")
lines(time,subM2, type = 'l', col = 'red')
lines(time,subM3, type = 'l', col = 'blue')
legend('topright',c('Sub_Metering1','Sub_Metering2','Sub_Metering3'),lty = 1, lwd = 2.5, col = c("black",'red','blue'))

plot(time,reactivePower,type = 'l',ylab = "Global Reactive Power",xlab = "")
dev.off()