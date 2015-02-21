# Human Activity Recognition Using Smartphones Dataset
Evaluation of data about human activity recognition using smartphones.

The following steps were performed on the original data set to obtain the tidy data set:

1. read in feature and activity labels from files (*features.txt* and *activity_labels.txt*)
2. for both train and test sets:
    + read in data set and assign feature labels to column names
    + read in activities and convert to factors
    + read in subjects and convert to factors
    + combine data set with activities and subjects and add to combined data set
3. combine train and test sets to one data set
4. remove duplicate columns
5. extract the measurements on the mean and standard deviation for each measurement along with subject and activity
6. summarize the average of each variable for each activity and each subject
7. write the summary to a text file
