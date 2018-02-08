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
#Plot 1 Global Active Power
png(filename = "plot1.png", width = 480, height = 480)
hist(filtered_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
