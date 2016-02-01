# Code Book
##Data Source
The data is from the "Human Activity Recognition Using Smartphones Data Set" and includes data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 
Here are the data for the project:(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Explanation of the files
*features.txt: Names of the 561 features.
*activity_labels.txt: Names for each of the 6 activities.
*X_train.txt: 7352 observations of the features.
*subject_train.txt: A vector of 7352 integers, indicating the ID of the volunteer related to each of the observations in X_train.txt.
*y_train.txt: A vector of 7352 integers, indicated the ID of the activity related to each of the observations in X_train.txt.
*X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
*subject_test.txt: A vector of 2947 integers, indicating the ID of the volunteer related to each of the observations in X_test.txt.
*y_test.txt: A vector of 2947 integers, indicating the ID of the activity related to each of the observations in X_test.txt.

##Variables
The tidy data set contains 10299 observations with 81 variables divided in:
*an activity label (Activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
*an identifier of the subject who carried out the experiment (Subject): 1, 3, 5, 6, 7, 8, 11, 14, 15, 16, 17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 30
*a 79-feature vector with time and frequency domain signal variables (numeric)

##Transformations
The raw data sets are processed with run_analysis.R script to create a tidy data set using the following steps:
1. The data set was downloaded and stored in the UCI HAR Dataset/ directory.
2. Activities, features and subject data is read using read.table.
3. Test and training data are merged to obtain a single data set. 
4. Data is searched for columns that have either mean or standard deviation in their names.
5. Desired columns and the correct column names are subsetted.
6. Descriptive activity names added to name the activities in the data set. 
7. Data set labeled with descriptive variable names.
8. Data is written to file "Tidy.text" that contains the processed data. The tidy data set contains 10299 observations with 81 varaiables. 


