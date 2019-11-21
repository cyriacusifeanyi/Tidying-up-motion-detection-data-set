---
title: "README.md"
author: "Cyriacus Ifeanyi Valentine"
---

# Tidying-up-motion-detection-data-set
### Assignment: Peer-graded Assignment: Getting and Cleaning Data Course Project
### by: Cyriacus Ifeanyi Valentine
---

### The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## The project consist of the following files:
1. tidy_df.txt
2. codeBook.md
3. README.md
4. run_analysis.R
5. Samsung data

## Details of the above files/ directories:
1. tidy_df.txt: this is the product of the run_analysis.R script that meets the 4 principle of tidy data. More details and specification is in Codebook.md
2. codeBook.md: this describes the variables, the data, and any transformations or work that was performed on the samsung data to clean it up.
3. README.md: talks about the purpose of this project, and introduce the files in this project and their use.
4. run_analysis.R: this is a script that perform the following transformation on the samsung data set.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

5. Samsung data: The dataset resides in the`UCI HAR Dataset` directory in the project root. For more information visit http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones or read the `Human Activity Recognition Using Smartphones Dataset` below.   
file URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### This is tree view of the `UCI HAR Dataset` directory

* 'UCI HAR Dataset'/
  + activity_labels.txt
  + features.txt
  + features_info.txt
  + README.txt
  + test/
    + 'Inertial Signals'/
      + body_acc_x_test.txt
      + body_gyro_x_test.txt
      + total_acc_x_test.txt
      + body_acc_y_test.txt
      + body_gyro_y_test.txt
      + total_acc_y_test.txt
      + body_acc_z_test.txt
      + body_gyro_z_test.txt
      + total_acc_z_test.txt
    + subject_test.txt
    + X_test.txt
    + Y_test.txt
  + train/
    + 'Inertial Signals'/
      + body_acc_x_train.txt
      + body_gyro_x_train.txt
      + total_acc_x_train.txt
      + body_acc_y_train.txt
      + body_gyro_y_train.txt
      + total_acc_y_train.txt
      + body_acc_z_train.txt
      + body_gyro_z_train.txt
      + total_acc_z_train.txt
    + subject_test.txt
    + X_train.txt
    + Y_train.txt

#### The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#### For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### Notes:
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.




