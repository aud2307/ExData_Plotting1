install.packages("sqldf")
install.packages("tcltk")
library(sqldf)
library(tcltk)

#data <- read.table(pipe('findstr /B /R ^[1-2]/2/2007 household_power_consumption.txt'),header=F, sep=';')

data <- read.table("household_power_consumption.txt",header=F, sep=';',skip=66638,nrows=2880,na.strings="?")
colnames(data) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))


hist(data$Global_active_power,col="red",xlab="Global active power(kilowatts)",main="Global active power")
dev.copy(png,file="plot1.png")
#png(filename = "plot1.png",width = 480, height = 480, units = "px")
dev.off()
