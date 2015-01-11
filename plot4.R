opar <- par(no.readonly=TRUE)
par(mfcol=c(2,2))
par(cex.axis=.75, cex.lab=.75)
par(mar=c(5.1,4.1,4.1,2.1))
par(pin=c(2.1,2))

# COL 1, ROW 1
plot(fdata$DateTime, fdata$Global_active_power, type="l", ylab="Global Active Power", xlab="")

# COL 1, ROW 2
plot(fdata$DateTime, fdata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(fdata$DateTime, fdata$Sub_metering_2, type="l", col="red")
lines(fdata$DateTime, fdata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red", "blue"), bty="n", cex=.75)

# COL 2, ROW 1
plot(fdata$DateTime, fdata$Voltage, type="l", ylab="Voltage", xlab="datetime")

# COL 2, ROW 2
plot(fdata$DateTime, fdata$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()

par(opar)


