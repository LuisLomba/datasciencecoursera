library("data.table")
library("lubridate")

#downloading & unzip file
file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_name <- "exdata_data_household_power_consumption.zip"
download.file(file_url,file_name)
unzip(file_name)

#loading data
household_power_data <- fread("household_power_consumption.txt", na.strings="?")
#formatting dates; := takes the need to copy the entire data table, its faster
household_power_data[, Date := lapply(.SD, as.Date,"%d/%m/%Y"), .SDcols = "Date"]
#filtering dates
filtered_data <- household_power_data[(Date == "2007-02-01") | (Date == "2007-02-02")]
#creates a new column with date and time
dates <- filtered_data$Date
times <- filtered_data$Time
pasted_dates_times <- paste(dates, times)
dates_times <- strptime(paste(dates, times), "%Y-%M-%D %H:%M:%S")
filtered_data[, total_datetime := strptime(paste(dates, times), "%Y-%M-%D %H:%M:%S"),]

filtered_data[, total_datetime := as.POSIXct(paste(Date, Time)),]


#Plot 2 Global Active Power
#MY SYSTEM IS NOT IN ENGLISH! Hence the "Qui / Sex / Sáb" in the graphic: its portuguese. 
png(filename = "plot2.png", width = 480, height = 480)
plot(filtered_data$total_datetime, filtered_data$Global_active_power, "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()