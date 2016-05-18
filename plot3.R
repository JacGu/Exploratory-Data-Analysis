## Plot 3 
plot(hhPc$Sub_metering_1,type="l",col="black",ann=FALSE,xaxt="n")
lines(hhPc$Sub_metering_2,type="l",col="red")
lines(hhPc$Sub_metering_3,type="l",col="blue")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Energy sub metering")
legend("topright",pch="---",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
legend("topright",pch="--",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png",width=480,height=480)
png 
  3 
 dev.off(3)
