library(dplyr)

# read the data file

power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
# use the filter fun in dplyr to filter on the requested dates as per the problem statement
power_feb <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 
# Plot using png graphic device
png("plot1.png",width=480,height=480)
hist(power_feb$Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",c="red")
dev.off()