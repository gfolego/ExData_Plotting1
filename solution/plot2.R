#!/usr/bin/Rscript --vanilla


# plot2.R
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

