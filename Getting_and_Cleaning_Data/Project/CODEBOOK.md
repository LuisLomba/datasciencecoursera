# Getting and Cleaning Data Project: Code Book </br>

## Introduction</br>
The purpose of this Code Book is to make a more extensive description of the variables used in this experiment,</br> 
as well as document the transformation used in the data analisys.</br>
</br>

## Original Data
Can be found in [this link in a .zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), comes with documentation. Additional information can be found at [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Notes on the data collecting

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Variables</br>

1. __activity_label__ -  The type of activity performed by the subjects of the experience. All subjects performed all the activities. The 6 diferent activities were:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

2. __subject_number__ - The subject involved in the activity, identified by a number. They were 30 subjects, aged 19-48 years.

3. __*Various Mean Measurements*__ - The mean measurement and standard deviation for each measurement from the original data, with descriptive names. These are:
* `timeBodyAccelerometer-mean()-X`
* `timeBodyAccelerometer-mean()-Y` 
* `timeBodyAccelerometer-mean()-Z` 
* `timeBodyAccelerometer-std()-X` 
* `timeBodyAccelerometer-std()-Y` 
* `timeBodyAccelerometer-std()-Z` 
* `timeGravityAccelerometer-mean()-X` 
* `timeGravityAccelerometer-mean()-Y` 
* `timeGravityAccelerometer-mean()-Z` 
* `timeGravityAccelerometer-std()-X` 
* `timeGravityAccelerometer-std()-Y` 
* `timeGravityAccelerometer-std()-Z` 
* `timeBodyAccelerometerJerk-mean()-X` 
* `timeBodyAccelerometerJerk-mean()-Y` 
* `timeBodyAccelerometerJerk-mean()-Z` 
* `timeBodyAccelerometerJerk-std()-X` 
* `timeBodyAccelerometerJerk-std()-Y` 
* `timeBodyAccelerometerJerk-std()-Z` 
* `timeBodyGyroscope-mean()-X` 
* `timeBodyGyroscope-mean()-Y` 
* `timeBodyGyroscope-mean()-Z` 
* `timeBodyGyroscope-std()-X` 
* `timeBodyGyroscope-std()-Y` 
* `timeBodyGyroscope-std()-Z` 
* `timeBodyGyroscopeJerk-mean()-X` 
* `timeBodyGyroscopeJerk-mean()-Y` 
* `timeBodyGyroscopeJerk-mean()-Z` 
* `timeBodyGyroscopeJerk-std()-X` 
* `timeBodyGyroscopeJerk-std()-Y` 
* `timeBodyGyroscopeJerk-std()-Z` 
* `timeBodyAccelerometerEuclideanMagnitude-mean()` 
* `timeBodyAccelerometerEuclideanMagnitude-std()` 
* `timeGravityAccelerometerEuclideanMagnitude-mean()` 
* `timeGravityAccelerometerEuclideanMagnitude-std()` 
* `timeBodyAccelerometerJerkEuclideanMagnitude-mean()` 
* `timeBodyAccelerometerJerkEuclideanMagnitude-std()` 
* `timeBodyGyroscopeEuclideanMagnitude-mean()` 
* `timeBodyGyroscopeEuclideanMagnitude-std()` 
* `timeBodyGyroscopeJerkEuclideanMagnitude-mean()` 
* `timeBodyGyroscopeJerkEuclideanMagnitude-std()` 
* `frequencyBodyAccelerometer-mean()-X` 
* `frequencyBodyAccelerometer-mean()-Y` 
* `frequencyBodyAccelerometer-mean()-Z` 
* `frequencyBodyAccelerometer-std()-X` 
* `frequencyBodyAccelerometer-std()-Y` 
* `frequencyBodyAccelerometer-std()-Z` 
* `frequencyBodyAccelerometerJerk-mean()-X` 
* `frequencyBodyAccelerometerJerk-mean()-Y` 
* `frequencyBodyAccelerometerJerk-mean()-Z` 
* `frequencyBodyAccelerometerJerk-std()-X` 
* `frequencyBodyAccelerometerJerk-std()-Y` 
* `frequencyBodyAccelerometerJerk-std()-Z` 
* `frequencyBodyGyroscope-mean()-X` 
* `frequencyBodyGyroscope-mean()-Y` 
* `frequencyBodyGyroscope-mean()-Z` 
* `frequencyBodyGyroscope-std()-X` 
* `frequencyBodyGyroscope-std()-Y` 
* `frequencyBodyGyroscope-std()-Z` 
* `frequencyBodyAccelerometerEuclideanMagnitude-mean()` 
* `frequencyBodyAccelerometerEuclideanMagnitude-std()` 
* `frequencyBodyBodyAccelerometerJerkEuclideanMagnitude-mean()` 
* `frequencyBodyBodyAccelerometerJerkEuclideanMagnitude-std()` 
* `frequencyBodyBodyGyroscopeEuclideanMagnitude-mean()` 
* `frequencyBodyBodyGyroscopeEuclideanMagnitude-std()` 
* `frequencyBodyBodyGyroscopeJerkEuclideanMagnitude-mean()` 
* `frequencyBodyBodyGyroscopeJerkEuclideanMagnitude-std()`

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
