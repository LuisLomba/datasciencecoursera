library("data.table")

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
filtered_data[, total_datetime := as.POSIXct(paste(Date, Time)), ]

#Plot 4
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(filtered_data$total_datetime, filtered_data$Global_active_power, "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(filtered_data$total_datetime, filtered_data$Voltage, "l", xlab = "Datetime", ylab = "Voltage")
plot(filtered_data$total_datetime, filtered_data$Sub_metering_1, "l", xlab="", ylab="Energy sub metering")
lines(filtered_data$total_datetime, filtered_data$Sub_metering_2, "l", col="red")
lines(filtered_data$total_datetime, filtered_data$Sub_metering_3, "l", col="blue")
plot(filtered_data$total_datetime, filtered_data$Global_reactive_power, "l", xlab = "Datetime", ylab = "Global_reactive_power")
dev.off()