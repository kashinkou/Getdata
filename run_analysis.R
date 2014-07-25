## prepare tidy data

## reading data
x.train <- read.table("./train/X_train.txt")
y.train <- read.table("./train/Y_train.txt")
subject.train <- read.table("./train/subject_train.txt")
x.test <- read.table("./test/X_test.txt")
y.test <- read.table("./test/Y_test.txt")
subject.test <- read.table("./test/subject_test.txt")

features <- read.table("features.txt")
activity.labels <- read.table("activity_labels.txt")

## merge training and test data sets, label data set with descriptive variable names
x.all <- rbind(x.train,x.test)
activity <- rbind(y.train,y.test)
subject <- rbind(subject.train,subject.test)
names(x.all)<-features[,2]
x <- cbind(subject,activity,x.all)
colnames(x)[1:2] <- c("subject","activity")

## Extract measurements on the mean and standard deviation for each measurement
mean.id <- grep("mean()",names(x),fixed=TRUE)
std.id <- grep("std()",names(x),fixed=TRUE)
id <- sort(c(1,2,mean.id,std.id))
x.ms <- x[,id] 

## Use descriptive activity names to name the activities in the data set
x.ms$activity <- activity.labels[x.ms$activity,2]

## Creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject
library(reshape)
xMelt <- melt(x.ms,id=c("subject","activity"))

## save data to text file
write.table(xMelt,file='tidydata.txt',quote=FALSE)
