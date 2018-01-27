# Getting and Cleaning Data Project: Code Book </br>
## Introduction</br>
The purpose of this Code Book is to make a more extensive description of the variables used in this experiment,</br> 
as well as document the transformation used in the data analisys.</br>
</br>

## Original Data
Can be found in [this link in a .zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), comes with documentation. Additional information can be found at [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables</br>

1. __activity_label__ -  The type of activity performed by the subjects of the experience. All subjects performed all the activities. The 6 diferent activities were:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

2. __subject_number__ - The subject involved in the activity, identified by a number. They were 30 subjects, aged 19-48 years. They were also divided by train subjects (70%) and test subjects (remaining 30%).

3. __*Various Mean Measurements*__ - The mean measurements from the original data, with descriptive names. These are:
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


