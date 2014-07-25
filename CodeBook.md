Variables:

subject  1-30  subject id

activity  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

variable  selected features with mean() or std() in features.txt

value  average of each variable for each subject and each activity


Data:

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data has been cleaned and transformed to form a tidy data set.


Transformation:

The following steps has been performed. 

1. Merging the training and the test sets to create one data set. Appropriately labeling the data set with descriptive variable names. 
2. Extracting only the measurements on the mean and standard deviation for each measurement. This was done by matching the string “mean()” and “std()” exactly in the feature names. 
3. Using descriptive activity names to name the activities in the data set
4. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.



