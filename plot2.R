opar <- par(no.readonly=TRUE)
par(cex.axis=.75, cex.lab=.75)
par(mar=c(5.1,4.5,4.1,2.1))
par(pin=c(5,4.5))

plot(fdata$DateTime, fdata$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()

par(opar)


