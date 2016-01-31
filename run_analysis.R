#Part 1- Merges the training and the test sets to create one data set.
#Read training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
YTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
XTrain <- read.table ("UCI HAR Dataset/train/X_train.txt", header = FALSE)
#Read test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
YTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
XTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
#Combine data by rows
x_data <- rbind(XTrain, XTest)
y_data <- rbind(YTrain, YTest)
subject <- rbind(subjectTrain, subjectTest)

#Read supporting data(features and activities)
features <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")


#Part 2- Extracts only the measurements on the mean and standard deviation for each measurement.
#Search for columns that have either mean or standard deviation in their names.
mean_STD_features <- grep("-(mean|std)\\(\\)", features[, 2])
#subset the desired columns and correct the column names
x_data <- x_data[ , mean_STD_features]
names(x_data) <- features[mean_STD_features, 2]

#Part 3 - Use descriptive activity names to name the activities in the data set
#Update values with the correct activity labels and correct column name
y_data[,1] <- activityLabels[y_data[,1],2]
names(y_data) <- "activity"


#Part 4 - Appropriately label the data set with descriptive variable names.
# Add name to subject column
names(subject) <- "subject"
# merge x, y, and subject data by columns 
completeData <- cbind(x_data,y_data,subject)
#Replace acronyms
names(completeData)<-gsub("Acc", "Accelerometer", names(completeData))
names(completeData)<-gsub("Gyro", "Gyroscope", names(completeData))
names(completeData)<-gsub("BodyBody", "Body", names(completeData))
names(completeData)<-gsub("Mag", "Magnitude", names(completeData))
names(completeData)<-gsub("^t", "Time", names(completeData))
names(completeData)<-gsub("^f", "Frequency", names(completeData))
names(completeData)<-gsub("tBody", "TimeBody", names(completeData))
names(completeData)<-gsub("-mean()", "Mean", names(completeData), ignore.case = TRUE)
names(completeData)<-gsub("-std()", "STD", names(completeData), ignore.case = TRUE)
names(completeData)<-gsub("-freq()", "Frequency", names(completeData), ignore.case = TRUE)
names(completeData)<-gsub("angle", "Angle", names(completeData))
names(completeData)<-gsub("gravity", "Gravity", names(completeData))

#Part 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#Create tidyData with the average for the activity and subject
# 66 <- 68 columns but last two (activity & subject)
tidyData <- ddply(completeData, .(subject, activity), function(x) colMeans(x[, 1:66]))
#Write data to data file "Tidy.text" that contains the processed data
write.table(tidyData, "Tidy.txt", row.name=FALSE)







