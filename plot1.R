getwd()
dataset = read.csv("household_power_consumption.txt", header = TRUE, sep = ';')
View(dataset)
dataset = dataset[dataset$Date%in%c('1/2/2007','2/2/2007'),]
View(dataset)

#Plot1
png(filename = "plot1.png",width = 480,height = 480)
dataset$Global_active_power = as.numeric(as.character(dataset$Global_active_power))
hist(dataset$Global_active_power, col = 'red', main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)')
dev.off()