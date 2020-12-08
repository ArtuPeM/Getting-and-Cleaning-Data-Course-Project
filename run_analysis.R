dir.create("data")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./data/dataset.zip")
unzip("./data/dataset.zip")

## test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## train data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# 1.Merging the training and the test sets to create one data set
subject.merge <- rbind(subject_test, subject_train)
names(subject.merge) <- "subject"

y.merge <- rbind(y_test, y_train)
names(y.merge) <- "activity"
 
## 4.Appropriately label the data set with descriptive variable names
x.merge <- rbind(x_test, x_train) 
features <- read.table("./UCI HAR Dataset/features.txt")
colnames <- grep(".*", as.character(features[,2]))
colnames <- features [colnames, 2]
colnames <- gsub("-mean", "mean", colnames)
colnames <- gsub("-std", "std", colnames)
colnames <- gsub("[-()]", "", colnames)
colnames(x.merge) <- colnames

#merging data
data <-cbind(subject.merge, y.merge, x.merge)
head(data)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

datanames <- names(data)
places <- grep("(mean|std).*", datanames)
data <- data[,c(1, 2, places)]

# 3.Uses descriptive activity names to name the activities in the data set
labels.y <- read.table("./UCI HAR Dataset/activity_labels.txt")

data$activity <- factor(data$activity, levels = labels.y[,1], labels = labels.y[,2])
data$subject <- as.factor(data$subject)
# testing if there are only the mean an std variables.
names(data)

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.
library(dplyr)
library(reshape2)
tidy_data_set <- arrange(data, subject)
tidy_data_set <- arrange(data, activity)
tidy_data_set <- melt(tidy_data_set, id = c("subject", "activity") )
tidy_data_set <- dcast(tidy_data_set, subject + activity ~ variable, mean)
write.table(tidy_data_set, file = "./tidy data.txt", row.names = FALSE)