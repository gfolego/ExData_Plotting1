#!/usr/bin/Rscript --vanilla

# This script implements the Exploratory Data Analysis Course Project 1
# For more information, please refer to
#   https://github.com/gfolego/ExData_Plotting1

# This script makes an attempt to follow Google's R Style Guide
# For more information, please refer to
#   https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


# Redirect output
sink("plot1.log")

# Read data
source("read_data.R")

# Define output
png(file = "plot1.png", bg = "transparent")

# Generate plot
with(dat, hist(Global_active_power,
               main = "Global Active Power",
               xlab = "Global Active Power (kilowatts)",
               col = "red"))

# Dump
dev.off()

