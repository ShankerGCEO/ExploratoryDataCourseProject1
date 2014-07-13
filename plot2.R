setwd("V:/Data Analytics/RPractice/coursera")
a<-read.table("household_power_consumption.txt",sep=";",heade=T,na.strings = c("?"))
a[,"Date"]<-as.Date(a$Date,format="%d/%m/%Y")
a1<-a[a[,"Date"]=="2007-02-01"|a[,"Date"]== "2007-02-02",]
a1$DateTime<-strptime(do.call(paste, c(a1[c("Date", "Time")], sep = " ")),format="%Y-%m-%d %H:%M:%S",tz="")
png("plot2.png",width=480,height=480)
with(a1,plot(DateTime,Global_active_power,lty="solid",type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()