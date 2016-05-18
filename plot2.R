## Plot 2
# Read Data
hhPc<-read.table("hhpc.txt",header=TRUE)
# Construct Plot 2
plot(hhPc$Global_active_power,type="l",ann=FALSE,xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Global Active Power (kilowatts)")
# Copy to a png file
dev.copy(png,file="plot2.png",width=480,height=480)
png 
  3 
dev.off(3)
