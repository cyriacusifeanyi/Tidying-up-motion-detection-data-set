---
title: "code_book.md"
author: "Cyriacus Ifeanyi Valentine"
---

# Tidying-up-motion-detection-data-set
### Assignment: Peer-graded Assignment: Getting and Cleaning Data Course Project
### by: Cyriacus Ifeanyi Valentine
---
_This document describes the variables, data, and any transformations or work that are performed by `run_analysis.R` to clean up the data into `tidy_df.txt`._


## Information about run_anlysis.R script

### Libraries Required
```
readr http://readr.tidyverse.org/
dplyr http://readr.tidyverse.org/
tidyr https://tidyr.tidyverse.org
```
### Transformations:
1. Merges the training and the test sets to create one data set.
Source code "run_analysis.R" loads both test and train data, processes them, and merges the results into one dataset.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
Source code "run_analysis.R" extracts the mean and standard deviation data into one dataset with appropriate column names.
3. Uses descriptive activity names to name the activities in the data set.
Source code "run_analysis.R" loads the descriptive feature and activity labels.
4. Appropriately labels the data set with descriptive variable names
Source code "run_analysis.R" adds appropriately descriptive variable names to the large dataset columns (variables).
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
Source code "run_analysis.R" calculates the average for all measurement columns grouped by variables Activity and Subject and then writes the output to a local text file named "tidydata.txt""

### Variables information:
Variables      |Final Description
---------------|--------------- 
`train_df`     |This is the column combination of y_train.txt, subject_train.txt, X_train.txt.     
classes        |‘tbl_df’, ‘tbl’ and 'data.frame'.
dimension      |7352 obs. of  563 variables.
`test_df`      |This is the column combination of y_test.txt, subject_test.txt, X_test.txt.
classes        |‘tbl_df’, ‘tbl’ and 'data.frame'.
dimension      |2947 obs. of  563 variables.
`train_test_df`|This is the row combination of `train_df` and `test_df`. The solution to step1 _"Merges the training and the test sets to create one data set."_
classes        |‘tbl_df’, ‘tbl’ and 'data.frame',
dimension      | 10299 obs. of 68 variables.
variables      |"activity", "subject", "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X" , "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGra, "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()" , "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()" , "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()"  
class(train_test_df$activity)       |"factor"
levels(train_test_df$activity)      |6 levels : "WALKING", "WALKING_UPSTAIRS", "SITTING" "STANDING", "LAYING"
class(train_test_df$subject)        |"factor"
levels(train_test_df$subject)       |30 levels : "1", "2", "3", "4",  "5",  "6",  "7",  "8",  "9",  "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"
`features`          |List of all features.
classes             |‘spec_tbl_df’, ‘tbl_df’, ‘tbl’ and 'data.frame'
dimension           |561 obs. of  2 variables
variables           |"index", "list"
class(features$index)     |"numeric"
class(features$list)      |"character"
length(unique(features$list))|477 unique observation :. 84 observation from the list column are repeated.
`selected_feature_index`      | This is the index of features that are unique and marches `-mean()` and `-std()` 
class               |"numeric"
length              |66
`selected_feature`  |This are the features corresponding to the `selected_feature_index`
class               |"character"
length              |66
`tidy_df`           |This is the output of the script - a tidy data set. 
class               |"grouped_df" "tbl_df"     "tbl"        "data.frame"
dimension           |11880 obs. of 4 variables
variables           |"activity", "subject", "measurement", "average"  
class(tidy_df$activity)       |"factor"
class(tidy_df$subject)        |"factor"
class(tidy_df$measurement)    |"factor"
class(tidy_df$average)        |"numeric"
`tidy_df.txt`|This is the `.txt` version of `tidy_df` variable - a data set file.
file size|696.2KB


```
> tidy_df

# A tibble: 11,880 x 4
# Groups:   activity, subject [180]
   activity subject measurement           average
   <fct>    <fct>   <fct>                   <dbl>
 1 WALKING  1       fBodyAcc-mean()-X     -0.203 
 2 WALKING  1       fBodyAcc-mean()-Y      0.0897
 3 WALKING  1       fBodyAcc-mean()-Z     -0.332 
 4 WALKING  1       fBodyAcc-std()-X      -0.319 
 5 WALKING  1       fBodyAcc-std()-Y       0.0560
 6 WALKING  1       fBodyAcc-std()-Z      -0.280 
 7 WALKING  1       fBodyAccJerk-mean()-X -0.171 
 8 WALKING  1       fBodyAccJerk-mean()-Y -0.0352
 9 WALKING  1       fBodyAccJerk-mean()-Z -0.469 
10 WALKING  1       fBodyAccJerk-std()-X  -0.134 
# ... with 11,870 more rows
```