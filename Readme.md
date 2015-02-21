---
title: "README"
output: html_document
---
Getting and Cleaning Data - Course Project


Instructions for running the scripts

1. Download raw data from 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
2. Unzip file
3. Set working directory to the unzipped data directory (UCI HAR Dataset)
4. Download script run_analysis.R
5. source ('run_analysis.R')
6. View (read.table("summ_Comb_Wide.txt"))

Contents Files

1. run_analysis.R script to assemble, organize and analyze data
2. Readme. Rmd - Overview
3. CodeBook.Rmd - details of output columns and data transformation

Output File : summ_Comb_Wide.txt

Input Data Files

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


Working Directory
    Pre requisites for running this code
    Code assumes working directory where the Samsung data has been unzipped
    with subdirectories for Test and train data seperate

"run_analysis.R"

     The folloiwng code merges the training and the test sets to create one data set.
     Extracts measurements on the mean and standard deviation for each measurement. 
     Uses descriptive activity names to name the activities in the data set
     Labels the data set with descriptive variable names. 
     Creates a WIDE FORM of tidy data set 
     Finally groups by and summarizes the data set tidy data storing the average for the variables

