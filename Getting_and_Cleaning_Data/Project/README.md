# Readme file for the Getting and Cleaning Data project, John Hopkins @ Coursera.

### Authored by Luís Lomba

A script named `run_analisys.R` has been made that does the following steps:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final output of the script is a file named `tidy_dt.txt`. The file obeys to the tidy data principles.

To use the script you must download the [data zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzip in your working directory. Use `getwd()` to know where your working directory is, and `setwd()` to set a new one.

Additional information about the dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
