## DOWNLOAD AND UNZIP THE DATA
if (!file.exists("./CourseProject01")) {dir.create("./CourseProject01")}
if (!file.exists("./CourseProject01/household_power_consumption.txt")) 
{
	fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
	download.file(fileUrl, destfile = "./CourseProject01/ProjectData.zip")
	unzip(zipfile = "./CourseProject01/ProjectData.zip", exdir = "./CourseProject01")
}

## FILTER THE DATA
FileName <- "./CourseProject01/household_power_consumption.txt"
odata <- read.table(file = FileName, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = TRUE)
odata$Date2 <- as.Date(odata$Date, format = "%d/%m/%Y")
fdata <- odata[odata$Date2 == "2007-02-01" | odata$Date2 == "2007-02-02",]
fdata$DateTime <- as.POSIXct(paste(fdata$Date, fdata$Time), format = "%d/%m/%Y %H:%M:%S")

## REMOVE VARIABLES
rm(odata)
rm(FileName)

