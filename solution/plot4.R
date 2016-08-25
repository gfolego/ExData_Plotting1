#!/usr/bin/Rscript --vanilla

# plot4.R
# Copyright 2016 Guilherme Folego (gfolego@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.



# This script implements the Exploratory Data Analysis Course Project 1
# For more information, please refer to
#   https://github.com/gfolego/ExData_Plotting1

# This script makes an attempt to follow Google's R Style Guide
# For more information, please refer to
#   https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


# Redirect output
sink("plot4.log")

# Read data
source("read_data.R")

# Define output
png(file = "plot4.png", bg = "transparent")
par(mfcol = c(2, 2))

# Generate topleft plot
with(dat, plot(Global_active_power ~ DateTime,
               type = "l",
               ylab = "Global Active Power",
               xlab = ""))

# Generate bottomleft plot
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
       bty = "n",
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Generate topright plot
with(dat, plot(Voltage ~ DateTime,
               type = "l",
               ylab = "Voltage",
               xlab = "datetime"))

# Generate bottomright plot
with(dat, plot(Global_reactive_power ~ DateTime,
               type = "l",
               ylab = "Global_reactive_power",
               xlab = "datetime"))

# Dump
dev.off()

