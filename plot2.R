setwd("E:/OneDrive/_FE/_Conhecimento/_Coursera/_Data/04-Exploratory_Data_Analysis/proj1/data")

# Read the main data
data <- read.table("./data.txt", sep = ";", header = TRUE, quote = "", 
                   stringsAsFactors=FALSE, na.strings = "?")

# Create the subset data in 1/2/2007 and 2/2/2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Subset the Global_active_power
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Subset the datetime
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Create the plot
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()