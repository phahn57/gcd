## Codebook

Files obtained from:[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip][fof] 



### creating data.frames from:

* features.txt containing 561 rows of features described in features_info.txt

* x-test.txt containing 2947 rows of 561 variables -> test_observ
* subject_test.txt containing 2947 rows of subject_numbers
* y_test .txt containing 2947 rows of test activity, described in ....

* x-train.txt containing 7352 rows of 561 variables -> train-observ
* subject_train.txt containing 7352 rows of subject_numbers
* y_test .txt containing 7352 rows of test activity, described in ....

changing column names (see README.md) in test_observ and train_observ
adding respective columns from subjects and activity

Concatenate both data frame

extract columns containing "mean" or "std" (details see README.md)

### tidying see README.md

Resulting dataset run_analysis.txt
contains mean-values for 
each subject (1-30) and 
each activity("walking","walking_upstairs","walking_downstairs","sitting","standing","laying")

mean values are calculated for:

    [,1]                          [,2]                             
 [1,] "timebodyaccmeanx"            "freqbodyaccjerkmeany"           
 [2,] "timebodyaccmeany"            "freqbodyaccjerkmeanz"           
 [3,] "timebodyaccmeanz"            "freqbodyaccjerkstanddevx"       
 [4,] "timebodyaccstanddevx"        "freqbodyaccjerkstanddevy"       
 [5,] "timebodyaccstanddevy"        "freqbodyaccjerkstanddevz"       
 [6,] "timebodyaccstanddevz"        "freqbodyaccjerkmeanfreqx"       
 [7,] "timegravityaccmeanx"         "freqbodyaccjerkmeanfreqy"       
 [8,] "timegravityaccmeany"         "freqbodyaccjerkmeanfreqz"       
 [9,] "timegravityaccmeanz"         "freqbodygyromeanx"              
[10,] "timegravityaccstanddevx"     "freqbodygyromeany"              
[11,] "timegravityaccstanddevy"     "freqbodygyromeanz"              
[12,] "timegravityaccstanddevz"     "freqbodygyrostanddevx"          
[13,] "timebodyaccjerkmeanx"        "freqbodygyrostanddevy"          
[14,] "timebodyaccjerkmeany"        "freqbodygyrostanddevz"          
[15,] "timebodyaccjerkmeanz"        "freqbodygyromeanfreqx"          
[16,] "timebodyaccjerkstanddevx"    "freqbodygyromeanfreqy"          
[17,] "timebodyaccjerkstanddevy"    "freqbodygyromeanfreqz"          
[18,] "timebodyaccjerkstanddevz"    "freqbodyaccmagmean"             
[19,] "timebodygyromeanx"           "freqbodyaccmagstanddev"         
[20,] "timebodygyromeany"           "freqbodyaccmagmeanfreq"         
[21,] "timebodygyromeanz"           "freqbodybodyaccjerkmagmean"     
[22,] "timebodygyrostanddevx"       "freqbodybodyaccjerkmagstanddev" 
[23,] "timebodygyrostanddevy"       "freqbodybodyaccjerkmagmeanfreq" 
[24,] "timebodygyrostanddevz"       "freqbodybodygyromagmean"        
[25,] "timebodygyrojerkmeanx"       "freqbodybodygyromagstanddev"    
[26,] "timebodygyrojerkmeany"       "freqbodybodygyromagmeanfreq"    
[27,] "timebodygyrojerkmeanz"       "freqbodybodygyrojerkmagmean"    
[28,] "timebodygyrojerkstanddevx"   "freqbodybodygyrojerkmagstanddev"
[29,] "timebodygyrojerkstanddevy"   "freqbodybodygyrojerkmagmeanfreq"
[30,] "timebodygyrojerkstanddevz"   "timebodyaccmeanx"               
[31,] "timebodyaccmagmean"          "timebodyaccmeany"               
[32,] "timebodyaccmagstanddev"      "timebodyaccmeanz"               
[33,] "timegravityaccmagmean"       "timebodyaccstanddevx"           
[34,] "timegravityaccmagstanddev"   "timebodyaccstanddevy"           
[35,] "timebodyaccjerkmagmean"      "timebodyaccstanddevz"           
[36,] "timebodyaccjerkmagstanddev"  "timegravityaccmeanx"            
[37,] "timebodygyromagmean"         "timegravityaccmeany"            
[38,] "timebodygyromagstanddev"     "timegravityaccmeanz"            
[39,] "timebodygyrojerkmagmean"     "timegravityaccstanddevx"        
[40,] "timebodygyrojerkmagstanddev" "timegravityaccstanddevy"        
[41,] "freqbodyaccmeanx"            "timegravityaccstanddevz"        
[42,] "freqbodyaccmeany"            "timebodyaccjerkmeanx"           
[43,] "freqbodyaccmeanz"            "timebodyaccjerkmeany"           
[44,] "freqbodyaccstanddevx"        "timebodyaccjerkmeanz"           
[45,] "freqbodyaccstanddevy"        "timebodyaccjerkstanddevx"       
[46,] "freqbodyaccstanddevz"        "timebodyaccjerkstanddevy"       
[47,] "freqbodyaccmeanfreqx"        "timebodyaccjerkstanddevz"       
[48,] "freqbodyaccmeanfreqy"        "timebodygyromeanx"              
[49,] "freqbodyaccmeanfreqz"        "timebodygyromeany"              
[50,] "freqbodyaccjerkmeanx"        "timebodygyromeanz"            
 
time  representing former t. values
freq  representing former f. values
standdev  representing std values
mean is mean

[fof]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip