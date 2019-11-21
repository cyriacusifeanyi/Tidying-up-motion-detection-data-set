#import the readr, dplyr and tidyr packages into r
library(readr)
library(dplyr)
library(tidyr)

#reading the train and test datasets----
train_df <- read_table2("UCI HAR Dataset/train/y_train.txt", col_names = "activity") %>%
  cbind(read_table2("UCI HAR Dataset/train/subject_train.txt", col_names = "subject")) %>% 
  cbind(read_table2("UCI HAR Dataset/train/X_train.txt", col_names = FALSE)) %>%
  tbl_df()

test_df <- read_table2("UCI HAR Dataset/test/y_test.txt", col_names = "activity") %>%
  cbind(read_table2("UCI HAR Dataset/test/subject_test.txt", col_names = "subject")) %>%
  cbind(read_table2("UCI HAR Dataset/test/X_test.txt", col_names = FALSE)) %>%
  tbl_df()

#Solution1 ----
#Merges the training and the test sets to create one data set.
train_test_df <- bind_rows(train_df,test_df) %>%
  mutate(activity = as.factor(activity), subject = as.factor(subject))

#Solution2 ----
#Extracts only the measurements on the mean and standard deviation for each measurement.
#To do this i will first have to put the correct variable label on the dataset
#first i will read the features dataset
features <- read_table2(file = "UCI HAR Dataset/features.txt", col_names = c("index", "list"))

#the features are not unique so i will combine its index with feature name
#length(unique(features$list)) = 477 instead of 561
names(train_test_df) <- c("activity", "subject", unite(features, "y")$y)

#Extracting mean() and std():
train_test_df <- select(train_test_df, activity, subject, matches('-mean()|-std()'), -matches('meanFreq()'))

#Solution3 ----
#Uses descriptive activity names to name the activities in the data set
levels(train_test_df$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
                                          "SITTING", "STANDING", "LAYING")

#Solution4 ----
#Appropriately labels the data set with descriptive variable names.
selected_feature_index <- parse_number(names(train_test_df[-(1:2)]))
selected_feature <- features[selected_feature_index,]$list

names(train_test_df) <- c("activity","subject",selected_feature)

#Solution5 ----
#creates a second, independent tidy data set with the average of each
#variable for each activity and each subject.
#Creating a table with the following column (activity, subject, measurement, average)

tidy_df <- train_test_df %>%
  gather(key = "measurement", value = "values", -c(activity, subject)) %>%
  mutate(measurement = as.factor(measurement)) %>%
  group_by(activity, subject, measurement) %>%
  summarize(average = mean(values))


#Code to produce the tidy_df.txt ----
write.table(x = tidy_df, file = "tidy_df.txt", row.name=FALSE)
#Code to view the tidy_df.txt ----
View(read.table("tidy_df.txt", header = TRUE))