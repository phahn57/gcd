# CourseProject Getting and Cleaning Data

## R-Libraries used
* stringr  for manipulating strings
* reshape2  for building final dataframe 

Download files from 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] 
Unzip data in a directory.
Within this directory run the script...
in this parent directory there are some explaining files and one file used for further 
processing.. features.txt


There are two subdirectories 

* ./test
* ./train

These two directories containing the data, which will be processed.

## 1. Merging training and test set after reading the different parts of the data

##Reading features.txt (561) in features


## Processing data of Test subjects
X_test.txt raw data for 

* test subjects (9) 
* all features
* all activity_labels 

Reading X-test.txt as observations in test_observ 2947 rows of 561 variables
Reading subject_test.txt in test_subject 2947 rows containing subject for each observation
Reading y-test.txt as test_activity 2947 rows containing the activity number for 
each observation



## Processing data for train subjects

X_train.txt raw data for 

* train subjects (21) 
* all features
* all activity_labels 

Reading X-train.txt as observations in test_observ 7352 rows of 561 variables
Reading subject_train.txt in train_subject 7352 rows containing subject for each observation
Reading y-train.txt as train_activity 7352 rows containing the activity number for
 each observation

assign features[,2] as colnames(test_observ) 
assign features[,2] as colnames(train_observ)

concatenate data frames (test_observ,train_observ) to data_total1

## 2. Extract only the measurements with mean and standard deviation ...

I decided to extract all columns containing "mean" or "std" but not labeled "Mean" 
column 555ffas in my opinion these values are not mean values.
 


## 3. Use descriptive activity names...

Numbers of activities in column activity are changed to names using the names from 
activity_labels

  
## 4. Appropiate labels the dataset...
 
* make all column names lowercase
* replace activity numbers with names obtained from activity_labels
* remove "-"
* remove brackets

According to features_info.txt
time depended variables are named with a preceeding t and 
frequency depending variables are named with an preeceding f.
According to this t is changed to time and f to freq

### 5. From the data set in step 4, creates a second, independent tidy data set 
with the average of each variable for each activity and each subject.

using melt and dcast function of package reshape 2