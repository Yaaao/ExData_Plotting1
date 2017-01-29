getwd()
dataset = read.csv("household_power_consumption.txt", header = TRUE, sep = ';')
View(dataset)
dataset = dataset[dataset$Date%in%c('1/2/2007','2/2/2007'),]
View(dataset)

#Plot2
png(filename = "plot2.png",width = 480,height = 480)
time = strptime(paste(dataset$Date, dataset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(time,dataset$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")
dev.off()
