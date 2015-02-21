## run_analysis.R
##       Getting and Cleaning Data - Course Project

##      The folloiwng code merges the training and the test sets to create one data set.
##      Extracts measurements on the mean and standard deviation for each measurement. 
##      Uses descriptive activity names to name the activities in the data set
##      Labels the data set with descriptive variable names. 
##      Creates a WIDE FORM of tidy data set 
##      Finally groups by and summarizes the data set tidy data storing the average for the variables

##      Pre requisites for running this code
##      Code assumes working directory where the Samsung data has been unzipped
##      with subdirectories for Test and train data seperate

library (dplyr)

##  Load test data from test/X_test.txt, y_test.txt  and subject_test.tx 
##  into individual data frames

x_test <-read.table("test/X_test.txt")
y_test <-read.table("test/y_test.txt")
subject_test <-read.table("test/subject_test.txt")


##  Load trian data from train/X_train.txt, y_train.txt and subject_train.txt
##  into individual data frames

x_train <-read.table("train/X_train.txt")
y_train <-read.table("train/y_train.txt")
subject_train <-read.table("train/subject_train.txt")

## combine all columns of test data from X_test ,Y_test  and Subject_test 

x_test <-cbind(y_test,subject_test,x_test)

## combine all columns of train data from X_train ,Y_train  and Subject_train

x_train <-cbind(y_train, subject_train, x_train)

## combine the rows for the train and test into a single combined data frame

x_combined <- rbind(x_test,x_train)

## Load features - required for defining columns names

features <-read.table("features.txt", stringsAsFactors=FALSE)

## set Column names for the combined data set from the features table

names(x_combined)<- c("activity_id", "subjects",features [,2])

##  Load activity labels

activity_labels <-read.table("activity_labels.txt")

## set column names for Actitivty table - required for merge

names(activity_labels)<- c("activity_id","activity")

## Join activity_labels with combined data set to get descriptive test for activity

x_combined <- merge(activity_labels,x_combined ,by="activity_id")

## Extract only mean() and dev() columns from combined set 
## have only included colunm names which contain "mean()"  or "dev()" in their names 
## There are other occurances of the word MEAN in other columns which I have excluded
## as the requirements were not exactly clear.

x_combined <- select (x_combined , activity, subjects, contains("mean()"), contains("std()") )

## The data is WIDE at this point and follows all the rules of tidy data
## It can be further normalized into a LONG form with one variable per row
## but the WIDE form appears to be easier for further analysis


## grouping on activity and subject columns for summurization

g_combined<- group_by(x_combined, activity, subjects)

## summarizing the data to get average of all variables

s_combined<- summarise_each(g_combined, funs(mean))

## Finally storing the summarized data into file

write.table(s_combined, "summ_Comb_Wide.txt",row.names=FALSE)

## to Read file use following steps
View (read.table("summ_Comb_Wide.txt"))

## The end !!
