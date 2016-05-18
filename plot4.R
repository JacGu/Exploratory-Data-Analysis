## Contruct a panelplot
# Read Data
hhPc<-read.table("hhpc.txt",header=TRUE)
# Set panel dimensions
par(mfrow=c(2,2))

# Plot 2 is panelplot 1
plot(hhPc$Global_active_power,type="l",ann=FALSE,xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Global Active Power (kilowatts)")

# Plot Voltage is panelplot 2
plot(hhPc$Voltage,type="l",ann=FALSE,xaxt="n")
axis(side=1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Voltage",xlab="datetime")

# Plot 3 is panelplot 3
plot(hhPc$Sub_metering_1,type="l",col="black",ann=FALSE,xaxt="n")
lines(hhPc$Sub_metering_2,type="l",col="red")
lines(hhPc$Sub_metering_3,type="l",col="blue")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Energy sub metering")
legend("topright",pch="---",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
legend("topright",pch="--",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Plot 4 Global_reactive_power is panelplot 4
plot(hhPc$Global_reactive_power,type="l",ann=FALSE,xaxt="n")
axis(side=1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))
title(ylab="Global_reactive_power",xlab="datetime")
# Copy to png file
dev.copy(png,file="panelplot.png",width=480,height=480)
dev.off(3)


