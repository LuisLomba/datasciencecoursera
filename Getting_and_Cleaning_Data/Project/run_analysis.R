#### Getting and Cleaning Data Final Project, John Hopkins @ Coursera 
#### Authored by Luís Lomba - Jan 2018

## This script does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#If you want to test this script, make sure you know where your working directory is: use getwd() to know, setwd() to set a new working directory.
#Script assume you already have the files.

#Helping info: 
#https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
#https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view



###Step 1 - Merges the training and the test sets

#Loads the test subjects: they were 30, splitted by train test subjects (70% of the 30 subjects) and test set subjects(30% of the 30).
subject_test <- data.table::fread("UCI HAR Dataset/test/subject_test.txt")
subject_train <- data.table::fread("UCI HAR Dataset/train/subject_train.txt")

#renames the sujects' test & train columns to something more descriptive
names(subject_test) <- "subject_number"
names(subject_train) <- "subject_number"

#loads the names of the columns/variables.
features_data <- data.table::fread("UCI HAR Dataset/features.txt")
column_names_data <- features_data$V2

#Loads the training set and the test set:
X_test <- data.table::fread("UCI HAR Dataset/test/X_test.txt", col.names = column_names_data) #muito demorado
X_train <- data.table::fread("UCI HAR Dataset/train/X_train.txt", col.names = column_names_data)

#Loads the test & training labels (i.e., walking or sitting, etc.).
Y_test <- data.table::fread("UCI HAR Dataset/test/y_test.txt")
Y_train <- data.table::fread("UCI HAR Dataset/train/y_train.txt")

#Renames column of test & training labels
names(Y_test) <-  "activity_label"
names(Y_train) <- "activity_label"

#merges test sets and labels
XY_test <- cbind(X_test, Y_test)
XY_train <- cbind(X_train, Y_train)

#merges XY_test with the test subjects
XY_test_with_subjects <- cbind(XY_test, subject_test)

#merges XY_train with the train subjects
XY_train_with_subjects <- cbind(XY_train, subject_train)

#Finally, merging all together
XY_test_train <- rbind(XY_test_with_subjects, XY_train_with_subjects)



### Step 2 - Extracts only the measurements on the mean and standard deviation

#Fetching all variables' names that are the mean and standard deviation
##Keep in mind that the parenthesis «()» need to be escaped
variables_mean_and_std <- grep("mean\\(\\)|std\\(\\)", features_data$V2) 

#subsetting df, getting all required columns
##562 aand 563 are the columns "subject_number" and "activity_label", respectively (made no sense leaving those key columns out)
XY_trimmed_columns <- subset(XY_test_train, select = c(variables_mean_and_std, 562, 563))



### Step 3 - Change descriptive activity names to name the activities in the data set

#activity labels
activity_labels <- data.table::fread("UCI HAR Dataset/activity_labels.txt")
XY_trimmed_columns$activity_label <- factor(XY_trimmed_columns$activity_label, labels = activity_labels$V2)



### Step 4 - Appropriately labels the data set with descriptive variable names.

#As per features_info.txt, I've expanded the names as to be more descriptive
names(XY_trimmed_columns) <- gsub("Acc", "Accelerometer", x = names(XY_trimmed_columns))
names(XY_trimmed_columns) <- gsub("Gyro", "Gyroscope", x = names(XY_trimmed_columns))
names(XY_trimmed_columns) <- gsub("^t", "time", x = names(XY_trimmed_columns))
names(XY_trimmed_columns) <- gsub("Mag", "EuclideanMagnitude", x = names(XY_trimmed_columns))
names(XY_trimmed_columns) <- gsub("^f", "frequency", x = names(XY_trimmed_columns))


### Step 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library("dplyr")
tidy_dt <- XY_trimmed_columns %>% group_by(subject_number, activity_label) %>% summarise_all(mean)
fwrite(tidy_dt, file = "tidy_dt.txt")
