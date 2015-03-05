# [Exploratory Data Analysis](https://www.coursera.org/course/exdata)

## Course Project 1

For more information on the project description, please refer to the [repository description](README.md).


## Generating the plots

1. Download and unzip the [dataset](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)
    * The file `household_power_consumption.txt` should be created in the working directory
2. Place the scripts in the working directory
3. Run each script (*e.g.*, `./plot1.R`)

The generated plot will be saved to the respective *png* file (*e.g.*, `plot1.png`).
Also, a *log* file with the corresponding output will be create (*e.g.*, `plot1.log`).


## Implementation details

These scripts require the following packages:
* [dplyr](http://cran.r-project.org/web/packages/dplyr/index.html)
* [data.table](http://cran.r-project.org/web/packages/data.table/index.html)
* [lubridate](http://cran.r-project.org/web/packages/lubridate/index.html)

For optimized use of processing time and memory space, the [read_table.R](solution/read_table.R) script already reads only the necessary data.

Most importantly, the scripts start with the assumption that the dataset file is available in the working directory in an unzipped `UCI HAR Dataset` directory.


## Additional notes

The script files makes an attempt to follow [Google's R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml).

If you still have any [doubt](http://www.imdb.com/title/tt0918927/), before marking, please refer to the [**Assignment 1 Important Notes**](https://class.coursera.org/exdata-012/forum/thread?thread_id=3) and [**Discussion on Peer Feedback**](https://class.coursera.org/exdata-012/forum/thread?thread_id=19) threads in this course session forum.
