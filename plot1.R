## This is plot 1
hist(hhPc$Global_active_power,breaks="Sturges",col="red",ann=F)
title(main="Global Active Power",xlab="Globel_Active_Power (kilowatts)",ylab="Frequency")
dev.copy(png,file="plot1.png",width=480,height=480)
png 
  3 
dev.off(3)
