opar <- par(no.readonly=TRUE)
par(cex.axis=.75, cex.lab=.75)
par(mar=c(5.1,4.5,4.1,2.1))
par(pin=c(5,4.5))

plot(fdata$DateTime, fdata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(fdata$DateTime, fdata$Sub_metering_2, type="l", col="red")
lines(fdata$DateTime, fdata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red", "blue"), cex=.75)

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()

par(opar)


