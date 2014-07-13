setwd("V:/Data Analytics/RPractice/coursera")
a<-read.table("household_power_consumption.txt",sep=";",heade=T,na.strings = c("?"))
a[,"Date"]<-as.Date(a$Date,format="%d/%m/%Y")
a1<-a[a[,"Date"]=="2007-02-01"|a[,"Date"]== "2007-02-02",]
png("plot1.png",width=480,height=480)
hist(a1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
