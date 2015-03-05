#!/usr/bin/Rscript --vanilla

# This script implements the Exploratory Data Analysis Course Project 1
# For more information, please refer to
#   https://github.com/gfolego/ExData_Plotting1

# This script makes an attempt to follow Google's R Style Guide
# For more information, please refer to
#   https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


# Redirect output
sink("plot3.log")

# Read data
source("read_data.R")

# Define output
png(file = "plot3.png", bg = "transparent")

# Generate plot
with(dat, plot(Sub_metering_1 ~ DateTime,
               type = "l",
               ylab = "Energy sub metering",
               xlab = ""))
with(dat, lines(Sub_metering_2 ~ DateTime,
                col = "red"))
with(dat, lines(Sub_metering_3 ~ DateTime,
                col = "blue"))
legend("topright",
       lty = 1,
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Dump
dev.off()

