library(dplyr)

# read the data file

power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

# use the filter fun in dplyr to filter on the requested dates as per the problem statement

power_feb <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 

# construct the X Axis as per the problem statement requested in the question
power_feb$DateTime <- strptime(paste(power_feb$Date,power_feb$Time),"%d/%m/%Y %H:%M:%S")

# Plot using png graphic device
png("plot2.png",width=480,height=480)
plot(power_feb$DateTime, power_feb$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
dev.off()



