library(dplyr)

dir <- "UCI HAR Dataset"

# download data if it doesn't already exist
if (!file.exists("dataset.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip", method="curl")
}

# extract data if directory doesn't already exist
if (!file.exists(dir)) {
    unzip("dataset.zip")
}

# read in feature labels
feature_labels <- read.table(paste(dir,"/features.txt", sep = ""), stringsAsFactors = FALSE)

# read in activity labels
activity_labels <- read.table(paste(dir,"/activity_labels.txt", sep = ""), stringsAsFactors = FALSE)

combined <- data.frame()

# do for both the train and test set
for (settype in c("train", "test")) {
    print(settype)
    
    # read in data set and assign feature labels to column names
    data <- read.table(paste(dir,"/",settype,"/X_",settype,".txt", sep = ""), header = FALSE)
    names(data) <- feature_labels[[2]]
    
    # read in activities and convert to factors
    activities <- read.table(paste(dir,"/",settype,"/y_",settype,".txt", sep = ""), header = FALSE)
    activities[1] <- factor(activities[[1]], labels = activity_labels[[2]])
    names(activities) <- "activity"
    
    # read in subjects and convert to factors
    subjects <- read.table(paste(dir,"/",settype,"/subject_",settype,".txt", sep = ""), header = FALSE)
    subjects[1] <- factor(subjects[[1]])
    names(subjects) <- "subject"
    
    # combine data set with activities and subjects and add to combined data set
    combined <- rbind(combined, cbind(data, activities, subjects))
}

# remove duplicate columns
combined <- combined[,!duplicated(feature_labels[[2]])]

# extract the measurements on the mean and standard deviation for each measurement along with subject and activity
subset <- select(combined, subject, activity, contains("-mean"), contains("-std"))

# summarize the average of each variable for each activity and each subject
summary <- group_by(subset, activity, subject) %>% summarise_each(funs(mean))

# write the summary to a text file
write.table(summary, "summary.txt", row.name = FALSE)
