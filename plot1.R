## This is plot 1
## Read Data
hhPc<-read.table("hhpc.txt",header=TRUE)
## Create plot 1
hist(hhPc$Global_active_power,breaks="Sturges",col="red",ann=F)
title(main="Global Active Power",xlab="Globel_Active_Power (kilowatts)",ylab="Frequency")
dev.copy(png,file="plot1.png",width=480,height=480)
## Copy to png file
png 
  3 
dev.off(3)
