#!/usr/bin/Rscript --vanilla

# This script implements the Exploratory Data Analysis Course Project 1
# For more information, please refer to
#   https://github.com/gfolego/ExData_Plotting1

# This script makes an attempt to follow Google's R Style Guide
# For more information, please refer to
#   https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


# Redirect output
sink("plot2.log")

# Read data
source("read_data.R")

# Define output
png(file = "plot2.png", bg = "transparent")

# Generate plot
with(dat, plot(Global_active_power ~ DateTime,
               type = "l",
               ylab = "Global Active Power (kilowatts)",
               xlab = ""))

# Dump
dev.off()

