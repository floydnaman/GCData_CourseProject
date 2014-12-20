# DATA DICTIONARY - X5 DATASET #

## Variable Names and Description ##

`Subject`  
An identifier of the subject who carried out the experiment.  
1..30

`Activity`  
Name of activity carried out by the subject.  
WALKING  
WALKING\_UPSTAIRS  
WALKING\_DOWNSTAIRS  
SITTING  
STANDING  
LAYING

`tBodyAcc.mean...X`  
`tBodyAcc.mean...Y`  
`tBodyAcc.mean...Z`  
`tBodyAcc.std...X`  
`tBodyAcc.std...Y`  
`tBodyAcc.std...Z`  
`tGravityAcc.mean...X`  
`tGravityAcc.mean...Y`  
`tGravityAcc.mean...Z`  
`tGravityAcc.std...X`  
`tGravityAcc.std...Y`  
`tGravityAcc.std...Z`  
`tBodyAccJerk.mean...X`  
`tBodyAccJerk.mean...Y`  
`tBodyAccJerk.mean...Z`  
`tBodyAccJerk.std...X`   
`tBodyAccJerk.std...Y`  
`tBodyAccJerk.std...Z`  
`tBodyGyro.mean...X`  
`tBodyGyro.mean...Y`  
`tBodyGyro.mean...Z`  
`tBodyGyro.std...X`  
`tBodyGyro.std...Y`  
`tBodyGyro.std...Z`  
`tBodyGyroJerk.mean...X`  
`tBodyGyroJerk.mean...Y`  
`tBodyGyroJerk.mean...Z`  
`tBodyGyroJerk.std...X`  
`tBodyGyroJerk.std...Y`  
`tBodyGyroJerk.std...Z`  
`tBodyAccMag.mean..`  
`tBodyAccMag.std..`  
`tGravityAccMag.mean..`  
`tGravityAccMag.std..`  
`tBodyAccJerkMag.mean..`  
`tBodyAccJerkMag.std..`  
`tBodyGyroMag.mean..`  
`tBodyGyroMag.std..`  
`tBodyGyroJerkMag.mean..`  
`tBodyGyroJerkMag.std..`  
`fBodyAcc.mean...X`  
`fBodyAcc.mean...Y`  
`fBodyAcc.mean...Z`  
`fBodyAcc.std...X`  
`fBodyAcc.std...Y`  
`fBodyAcc.std...Z`  
`fBodyAccJerk.mean...X`  
`fBodyAccJerk.mean...Y`  
`fBodyAccJerk.mean...Z`  
`fBodyAccJerk.std...X`  
`fBodyAccJerk.std...Y`  
`fBodyAccJerk.std...Z`  
`fBodyGyro.mean...X`  
`fBodyGyro.mean...Y`  
`fBodyGyro.mean...Z`  
`fBodyGyro.std...X`  
`fBodyGyro.std...Y`  
`fBodyGyro.std...Z`  
`fBodyAccMag.mean..`  
`fBodyAccMag.std..`  
`fBodyBodyAccJerkMag.mean..`  
`fBodyBodyAccJerkMag.std..`  
`fBodyBodyGyroMag.mean..`  
`fBodyBodyGyroMag.std..`  
`fBodyBodyGyroJerkMag.mean..`  
`fBodyBodyGyroJerkMag.std..`

### Description of Feature Variables (across columns 3..68): ###

1. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
2. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
3. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

#### NOTES: ####
* 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* This dataset includes only the measurements on the `mean` and `std` (standard deviation) for each feature.
* Features are normalized and bounded within [-1,1].
* **All feature variables in this dataset are the _averages_ of the derived measurements for the corresponding feature.**

#### Examples: ####

`tBodyAcc.mean...Z`  
Average of the means of the body acceleration signal time series measurements for acceleration data in Z direction.

`tBodyAccJerk.std...Y`  
Average of the standard deviations of the body acceleration jerk signal time series measurements for acceleration data in Y direction.

`tBodyGyroJerk.mean...X`   
Average of the means of the body angular velocity jerk signal time series measurements for angular velocity data in X direction.

`tGravityAccMag.mean..`  
Average of the means of the magnitude of the gravity acceleration signal time series measurements.

`fBodyBodyGyroJerkMag.std..`  
Average of the standard deviations of the magnitude of the body angular velocity frequency domain jerk signal measurements.