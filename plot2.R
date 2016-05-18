## Plot 2
plot(hhPc$Global_active_power,type="l",ann=FALSE,xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png",width=480,height=480)
png 
  3 
dev.off(3)
