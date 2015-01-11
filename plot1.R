opar <- par(no.readonly=TRUE)
par(cex.axis=.75, cex.lab=.75, cex.main=.85)
par(mar=c(5.1,4.5,4.1,2.1))
par(pin=c(5,4.5))

hist(fdata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()

par(opar)
