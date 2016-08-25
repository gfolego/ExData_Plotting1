#!/usr/bin/Rscript --vanilla

# plot2.R
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

