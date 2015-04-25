#!/usr/bin/Rscript --vanilla


# read_data.R
# Copyright (C) 2015 Guilherme A. Fôlego (gfolego@gmail.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.



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


