## Read in data into workspace
setwd("UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt", stringsAsFactors = F)
features <- read.table("features.txt", stringsAsFactors = F)
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt", quote = "", na.strings = "", colClasses = "numeric", comment.char = "")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt", quote = "", na.strings = "", colClasses = "numeric", comment.char = "")
y_train <- read.table("train/y_train.txt")
##

## Merge test and training data
subject <- rbind(subject_test, subject_train)
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)
##

## Coerce column data frames into meaningful vectors
activity_labels <- activity_labels$V2
features <- features$V2
subject <- subject$V1
y <- y$V1
##

## Give descriptive activity names and subject labels
X1 <- data.frame(Subject = factor(subject), Activity = factor(y, labels = activity_labels))
##

## Give descriptive variable names to dataset
names(X) <- features
##

## Extract measurements on mean and std for each measurement and subset dataset
isMeanorStd <- grepl("mean()", features, fixed = T) | grepl("std()", features, fixed = T)
X2 <- X[, isMeanorStd]
##

## Produce sorted dataset as of step 4
X3 <- cbind(X1, X2)
X4 <- X3[order(X3$Subject, X3$Activity), ]
row.names(X4) <- NULL
##

## Produce dataset as of step 5
a <- split(X4[, 3:length(X4)], list(X4[, 2], X4[, 1]))
b <- sapply(a, colMeans)
c <- t(b)
d <- strsplit(row.names(c), "\\.")
Subject <- sapply(d, function(d) d[2])
Activity <- sapply(d, function(d) d[1])
X5 <- data.frame(Subject = Subject, Activity = Activity, c, row.names = NULL)
##

## Write tidy dataset into workspace
setwd("..")
write.table(X5, file = "X5.txt", row.names = F)
##

rm(list = ls())