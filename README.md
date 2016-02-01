# Getting-Cleaning-Project

## Introduction
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization. This file contains notes on how the script works.

## About the Data
Data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones].

## About the Script
*The script titled run_analysis.R  will merge the test and training sets together.<br>
*After merging testing and training, labels are added and extracts only columns that have to do with mean and standard deviation.<br>
*The output of the script is a second, independent tidy data set containing the average of each variable for each activity and each subject. This tidy dataset is called "Tidy.txt" can can be found in this repository.<br>

## Dependencies
run_analysis.R requires the installation of the dplyr library. 

##The Code Book
The CodeBook.md file explains the transformations performed and the resulting data and variables.