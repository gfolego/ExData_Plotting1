#!/usr/bin/Rscript --vanilla


# plot3.R
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

