---
title: "README"
output: html_document
---
Getting and Cleaning Data - Course Project


Contents

    1. run_analysis.R    - script to assemble, organize and analyze data
    2. Readme.md         - this file - Overview
    3. CodeBook.md       - details of output columns and data transformations


Instructions for running the project scripts

    1. Download raw data from 
       http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    2. Unzip file
    3. Set working directory to the unzipped data directory (UCI HAR Dataset)
    4. Download script run_analysis.R from this gitgub repo
       https://github.com/gmukund/getting-and-cleaning-data-project
    5. source ('run_analysis.R')
    6. View (read.table("summ_Comb_Wide.txt"))

Output File : summ_Comb_Wide.txt

Input Data Source

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

CodeBook.md

    For details of specific files used within the data set, transformations to get to the tidy data set and the final output file format see attached CodeBook.md

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

