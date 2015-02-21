dir <- "UCI HAR Dataset"

# download data if it doesn't already exist
if (!file.exists("dataset.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip", method="curl")
}

# extract data if directory doesn't already exist
if (!file.exists(dir)) {
    unzip("dataset.zip")
}

# read in training set
train <- read.table(paste("./",dir,"/train/X_train.txt", sep = ""), header = FALSE)

# read in training activities
train_activities <- read.table(paste("./",dir,"/train/y_train.txt", sep = ""), header = FALSE)

# read in feature labels
features <- read.table(paste(dir,"/features.txt", sep = ""))

# assign feature labels to column names
names(train) <- features[[2]]

# read in activity labels
activity_labels <- read.table(paste(dir,"/activity_labels.txt", sep = ""))

# convert activities to factors
train_activities[1] <- factor(train_activities[[1]], labels = activity_labels[[2]])
names(train_activities) <- "activity"

# read in training subjects
train_subjects <- read.table(paste("./",dir,"/train/subject_train.txt", sep = ""), header = FALSE)

# convert subjects to factors
train_subjects[1] <- factor(train_subjects[[1]])
names(train_subjects) <- "subject"

# combine training set with activities and subjects
train_new <- cbind(train, train_activities, train_subjects)





