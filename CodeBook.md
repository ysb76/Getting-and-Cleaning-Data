Code Book for Getting and Cleaning Data Course Project
========================================================

**summary_data.csv**
--------------------
This project resulted in a summary tidy data set based on the set of data and explanatory files from the *Human Activity Recognition Using Smartphones Dataset (Version 1.0)*, study by Reyes-Ortiz et al (2012).  The files are available for download at from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, with a full description of the data at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Data sets include measurements on 30 subjects, for six activities.  Original data included 561 measurements, which were reduced to the 79 measurements of mean and standard deviation values for this project.

The final data set **summary_data.csv** has dimension 14220 x 4 = (30 rows, 6 activities, 79 measurements) x 4, where the 4 columns are *subject*, *activity*, *variable*, and *mean*.  The column *variable* contains the 79 unique measurement means and standard deviations from the original X_train.txt and X_test.txt files for the train and test data, respectively; any measurement variables containing the text string "mean" or "std" were included in this reduced data set.

Descriptive activity names were assigned by transforming the activity variable to a factor variable with levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING; the activity data was provided in X_train.txt and X_test.txt with the labels in activity_labels.txt (from the downloaded zip file). 



**alldata.csv**
------------------

The first tidy data set was of dimension 10299 x 81, and included all sample observations on the selected measurement variables.  

>subject - subject ID; ranges from 1 to 30

>activity - activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

>tBodyAcc-mean()-X

>tBodyAcc-mean()-Y

>tBodyAcc-mean()-Z

>tBodyAcc-std()-X

>tBodyAcc-std()-Y

>tBodyAcc-std()-Z

>tGravityAcc-mean()-X

>tGravityAcc-mean()-Y

>tGravityAcc-mean()-Z

>tGravityAcc-std()-X

>tGravityAcc-std()-Y

>tGravityAcc-std()-Z

>tBodyAccJerk-mean()-X

>tBodyAccJerk-mean()-Y

>tBodyAccJerk-mean()-Z

>tBodyAccJerk-std()-X

>tBodyAccJerk-std()-Y

>tBodyAccJerk-std()-Z

>tBodyGyro-mean()-X

>tBodyGyro-mean()-Y

>tBodyGyro-mean()-Z

>tBodyGyro-std()-X

>tBodyGyro-std()-Y

>tBodyGyro-std()-Z

>tBodyGyroJerk-mean()-X

>tBodyGyroJerk-mean()-Y

>tBodyGyroJerk-mean()-Z

>tBodyGyroJerk-std()-X

>tBodyGyroJerk-std()-Y

>tBodyGyroJerk-std()-Z

>tBodyAccMag-mean()

>tBodyAccMag-std()

>tGravityAccMag-mean()

>tGravityAccMag-std()

>tBodyAccJerkMag-mean()

>tBodyAccJerkMag-std()

>tBodyGyroMag-mean()

>tBodyGyroMag-std()

>tBodyGyroJerkMag-mean()

>tBodyGyroJerkMag-std()

>fBodyAcc-mean()-X

>fBodyAcc-mean()-Y

>fBodyAcc-mean()-Z

>fBodyAcc-std()-X

>fBodyAcc-std()-Y

>fBodyAcc-std()-Z

>fBodyAcc-meanFreq()-X

>fBodyAcc-meanFreq()-Y

>fBodyAcc-meanFreq()-Z

>fBodyAccJerk-mean()-X

>fBodyAccJerk-mean()-Y

>fBodyAccJerk-mean()-Z

>fBodyAccJerk-std()-X

>fBodyAccJerk-std()-Y

>fBodyAccJerk-std()-Z

>fBodyAccJerk-meanFreq()-X

>fBodyAccJerk-meanFreq()-Y

>fBodyAccJerk-meanFreq()-Z

>fBodyGyro-mean()-X

>fBodyGyro-mean()-Y

>fBodyGyro-mean()-Z

>fBodyGyro-std()-X

>fBodyGyro-std()-Y

>fBodyGyro-std()-Z

>fBodyGyro-meanFreq()-X

>fBodyGyro-meanFreq()-Y

>fBodyGyro-meanFreq()-Z

>fBodyAccMag-mean()

>fBodyAccMag-std()

>fBodyAccMag-meanFreq()

>fBodyBodyAccJerkMag-mean()

>fBodyBodyAccJerkMag-std()

>fBodyBodyAccJerkMag-meanFreq()

>fBodyBodyGyroMag-mean()

>fBodyBodyGyroMag-std()

>fBodyBodyGyroMag-meanFreq()

>fBodyBodyGyroJerkMag-mean()

>fBodyBodyGyroJerkMag-std()

>fBodyBodyGyroJerkMag-meanFreq()



>The following background information is taken from UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) README.txt file.

>The set of variables that were estimated from these signals are: 

>mean(): Mean value
>std(): Standard deviation

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ

>tGravityAcc-XYZ

>tBodyAccJerk-XYZ

>tBodyGyro-XYZ

>tBodyGyroJerk-XYZ

>tBodyAccMag

>tGravityAccMag

>tBodyAccJerkMag

>tBodyGyroMag

>tBodyGyroJerkMag

>fBodyAcc-XYZ

>fBodyAccJerk-XYZ

>fBodyGyro-XYZ

>fBodyAccMag

>fBodyAccJerkMag

>fBodyGyroMag

>fBodyGyroJerkMag



