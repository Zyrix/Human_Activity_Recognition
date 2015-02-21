# Human Activity Recognition Using Smartphones Dataset (Version 1.0)

## Original Data Set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Original Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Features are normalized and bounded within [-1,1].

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

## Tidy Data Set

The tidy data set contains both the train and test datasets merged together. Columns for subject and activity were added to the original data. Duplicate columns (82) were eliminated. All variables that estimate the mean and standard deviation of the measurements were extracted for the tidy data set. Then, the average of each variable was calculated grouped by each activity and each subject.

Columns:
* activity: activity name that is performed
* subject: id of the subject

From the following variables the mean and standard deviation estimates were taken and averaged over each activity and subject combination. This was done for all signals in all axis directions:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Note that the original variables are normalized and bounded within [-1,1].

This results in a data set containing 81 columns, out of which 79 are averages of the means and standard deviations of the signal variables grouped by each activity and each subject.

## Code Book

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-e3zv{font-weight:bold}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 910px">
<colgroup>
<col style="width: 169px">
<col style="width: 133px">
<col style="width: 133px">
<col style="width: 263px">
<col style="width: 212px">
</colgroup>
  <tr>
    <th class="tg-e3zv">Variable Name</th>
    <th class="tg-e3zv">Variable Type</th>
    <th class="tg-e3zv">Variable Width</th>
    <th class="tg-e3zv">Values</th>
    <th class="tg-e3zv">Description</th>
  </tr>
  <tr>
    <td class="tg-031e">activity</td>
    <td class="tg-031e">factor</td>
    <td class="tg-031e">18</td>
    <td class="tg-031e">WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td>
    <td class="tg-031e">performed activity</td>
  </tr>
  <tr>
    <td class="tg-031e">subject</td>
    <td class="tg-031e">factor</td>
    <td class="tg-031e">2</td>
    <td class="tg-031e">1 - 30</td>
    <td class="tg-031e">subject performing activity</td>
  </tr>
  <tr>
    <td class="tg-031e">SIGNAL-mean()(-AXIS)</td>
    <td class="tg-031e">numeric</td>
    <td class="tg-031e">7</td>
    <td class="tg-031e">-1 - 1</td>
    <td class="tg-031e">average of the mean of SIGNAL (possibly AXIS) grouped by activity and subject</td>
  </tr>
  <tr>
    <td class="tg-031e">SIGNAL-std()(-AXIS)</td>
    <td class="tg-031e">numeric</td>
    <td class="tg-031e">7</td>
    <td class="tg-031e">-1 - 1</td>
    <td class="tg-031e">average of the standard deviation of SIGNAL (possibly AXIS) grouped by activity and subject</td>
  </tr>
</table>
</br>

For possible values of SIGNAL and AXIS please refer to the previous section.
