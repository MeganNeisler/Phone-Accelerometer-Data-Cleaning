# Obtaining and Cleaning Data from Samsung Accelerometers

This repository contains my work for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization. The purpose of the project is to collect and clean a data set from Samsung Galaxy S smartphone accelerometers for future ananlysis. 

## About the Data

Data was collected from the accelerometers from the Samsung Galaxy S smartphone. Please see the following url for a full data description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## About the Script
* The script titled run_analysis.R  will perform the following steps:
    * Merges the test and training sets together.
    * Adds labels with descriptive variable names to clarify the activity.
    * Extracts only the measurements on the mean and standard deviation for each measurement.
* The output of the script is a second, independent tidy data set containing the average of each variable for each activity and each subject. This tidy dataset is called "Tidy.txt" can can be found in this repository.<br>

## Dependencies
run_analysis.R requires the installation of the dplyr library. 

## The Code Book
The CodeBook.md file explains the transformations performed and the resulting data and variables.

## Author
* Megan Neisler

## Acknowledgements
* This was completed as part of Coursera's Johns Hopkins Data Science Specialization.
