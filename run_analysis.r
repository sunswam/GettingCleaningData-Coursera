
############################################################################################################
################### Coursera - Getting and Cleaning Data Assignment ########################################
############################################################################################################

# Clear R-Environment of all variables
rm(list = setdiff(ls(), lsf.str()))

# load required libraries
library(reshape2)

# read data
sub_train <- read.table("train\subject_train.txt")
sub_test <- read.table("test\subject_test.txt")
X_train <- read.table("train\X_train.txt")
X_test <- read.table("test\X_test.txt")
y_train <- read.table("train\y_train.txt")
y_test <- read.table("test\y_test.txt")

# add column name for subject files
names(sub_train) <- "subjectID"
names(sub_test) <- "subjectID"

# add column name for label files
names(y_train) <- "activity"
names(y_test) <- "activity"

# add column names for measurement files
featureNames <- read.table("features.txt")
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2

# combine files into one dataset
traindata <- cbind(sub_train, y_train, X_train)
testdata <- cbind(sub_test, y_test, X_test)
combined <- rbind(traindata, testdata)

# find columns with "mean()" or "std()"
meanstdcols <- grepl("mean\\(\\)", names(combined)) |
  grepl("std\\(\\)", names(combined))

# keep the subjectID and activity columns
meanstdcols[1:2] <- TRUE

# remove unwanted columns
combined <- combined[, meanstdcols]

# adding activity labels
combined$activity <- factor(combined$activity, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

# creating tidy data set
melted <- melt(combined, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activity ~ variable, mean)

# writing tidy data set to a file
write.table(tidy, "tidy.txt", sep="\t", row.names=FALSE)
