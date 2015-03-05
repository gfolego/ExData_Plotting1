#!/usr/bin/Rscript --vanilla

# This script implements the Exploratory Data Analysis Course Project 1
# For more information, please refer to
#   https://github.com/gfolego/ExData_Plotting1

# This script makes an attempt to follow Google's R Style Guide
# For more information, please refer to
#   https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


# Required libraries
suppressPackageStartupMessages(library("dplyr"))
suppressPackageStartupMessages(library("data.table"))
suppressPackageStartupMessages(library("lubridate"))


# Set locale
Sys.setlocale("LC_ALL", "en_US.utf8")

# Path to dataset
filename <- "household_power_consumption.txt"

# Read only necessary data
dat <- read.table(filename, header = FALSE, sep = ";", quote = "",
                  dec = ".", as.is = TRUE, na.strings = "?",
                  colClasses = c(rep("character", 2), rep("numeric", 7)),
                  nrows = 2880, skip = 66637, check.names = FALSE,
                  comment.char = "") %>% data.table

# Read header
header <- scan(filename, what = character(), nlines = 1,
               sep = ";", quiet = TRUE)
setnames(dat, header)

# Parse Date and Time
dat[, `:=`(DateTime = dmy_hms(paste(Date, Time, sep = " ")),
           Date = NULL,
           Time = NULL)] %>% setkey("DateTime")


