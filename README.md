# run_analysis.R
## Final Project for Getting and Cleaning Data
Course 3 of the JHU Data Science Specialization

### The Raw Data
The "Human Activity Recognition Using Smartphones Dataset" contains files broken up into two subfolders (sections) "test" and "train" which contain approximately 30% and 70% of the data (observations) respectively.  

Each section includes 3 files that make up the data set.  
    - X_????.txt  
    - y_????.txt  
    - subject_test.txt  
The variables (columns) in each of these sets are the same. The difference is that the files in the 'test' folder contain 2,947 rows, while the files in the 'train' folder contain 7,352 rows.  

Additionally there are two files in the top-level directory that describe the data in the files  
  - features.txt includes the column names for all 561 columns in the two X_????.txt files
  - `activity_labels.txt` - is a lookup table containing the descriptive names for the activities being performed when the data was collect. These names match to activity codes that are are included in each observation in the X_????.txt files
 
The data includes all these different measurements that came from the accelerometer and gyroscope on the tests subjects' Samsung Galaxy phones
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
 
 
### The Challenge
The challenge in this project is to:
1. Combine the 'test' dataset and the 'train' dataset into one dataset
1. pull out only the columns 

#### Process
1. Download the files
    - first check to make sure they're not already there
1. Unzip the files

