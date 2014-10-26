README - Getting and Cleaning Data Course Project
========================================================

The script file run_analysis.R is an R script for reading data, extracting key measurements, computing summary statistics, and exporting two tidy data sets as CSV files.  

The R script:
- Downloads data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into a folder "UCI HAR Dataset" in your working directory
- Reads in individual data sets for the train and test phases of the experiment
- Updates the names of the measurement variables to exclude the leading numbers and space
- Labels the columns of the data set with descriptive names
- Combines train and test data sets by reading in each data set using rbind()
- Transforms the activity variable to a factor variable and defines the levels
- Extracts mean and standard deviation measurements to reduce the train and test data sets to produce the first tidy data set "alldat_ms"
- Creates a second tidy data set "summary_data" by reducing the data to the mean value of each measurement variable for each activity and subject
- Exports the names of the data set (for use in the code book) as well as the tidy data set "summary_data"





