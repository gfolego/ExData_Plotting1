#!/usr/bin/Rscript --vanilla


# plot1.R
# Copyright (C) 2015 Guilherme Folego (gfolego@gmail.com)
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

