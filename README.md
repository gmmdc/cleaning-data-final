# README -- run_analysis.R
## Final Project for Getting and Cleaning Data


### The Raw Data
The "Human Activity Recognition Using Smartphones Dataset" contains files broken up into two subfolders/sections ("test" and "train") which contain approximately 30% and 70% of the data (observations) respectively.  

Each section includes 3 files that make up the data set:  

1. `X_****.txt`
2. `y_****.txt`
3. `subject_****.txt`

The variables (columns) in each of these sets match. The difference is that the files in the 'test' folder contain 2,947 rows, while the files in the 'train' folder contain 7,352 rows.  

Additionally there are two files in the top-level directory that describe the data in the dataset files:

- `features.txt`: includes the column names for all 561 variables in the two `X_****.txt` files
- `activity_labels.txt`: is a lookup table containing the descriptive names for the activities being performed when the data was collected. These names match to activity codes that are are included in each row of the `X_****.txt` files
 
The data includes many calculations on 17 different measurements that came from the accelerometer and gyroscope of the tests subjects' Samsung Galaxy Note II smartphones. 8 of these measurements include values for 3-axial signals (X, Y, and Z). This results in a total of 561 values (variables) for every record in the data.
  
 
### The Challenge
The challenge in this project is to:  

1. Combine the 'test' dataset and the 'train' dataset into one dataset
    - Each dataset is made up of three files and there are separate files containing the column names and other relevant information
    - Before it is possible to combine the two data sets, each dataset needs to be constructed into a single dataframe, and the column names need to be applied.
1. Extract out only the columns that contain mean and standard deviation for each measurement
1. Apply descriptive names for the values in the "activity names" column, which starts in the dataset as just a number between 1 and 6
1. Apply more descriptive variable names for each column of the final dataset
1. Create a second, tidy data set ??????????

IMPORTANT NOTE: Number 2 above is a question that requires a judgement call in determining which columns to include, and which ones not to include. The assignment asks us to extract "only the measurements on the mean and standard deviation for each measurement." 

* There are many measurements that have variable names ending in "mean()" and "std()". This accounts for a total of 66 columns.
* However, there are also some measurements related to frequency that have a variable ending in "meanFreq()" in addition to "mean()" and "std()". There are a total of 13 columns with names ending in "meanFreq()"
* Then there are seven (7) variable names that include the word "Mean" but are used in the "angle()" variables. For example, `angle(tBodyGyroMean,gravityMean)` and `angle(X,gravityMean)`

For my solution, I chose to include all variables ending in "mean()", "std()" and "meanFreq()", but not those "angle()" variables.  My reasoning was simply:  

1. this is a class project and it gives us the flexibility to make a decision on this matter as long as we justify the reason; 
2. the assignment was not clear on what constitutes a "measurement on the mean and standard deviation"; 
3. I am not sure that the "angle()" variables fit that definition; and 
4. I wanted to minimize the size of the final dataset to a more manageable set for my classmates to grade.

### My Process
1. Download the dataset zip file
    - first check to make sure it is not already there
1. Unzip the files and load 8 files into temporary dataframes
    - `features.txt              = features`
    - `activity_labels.txt       = activities`
    - `test/X_test.txt           = testX`
    - `test/y_test.txt           = testY`
    - `test/subject_test.txt     = test_subjects`
    - `train/X_train.txt         = trX`
    - `train/y_train.txt         = trY`
    - `train/subject_train.txt   = tr_subjects`
1. Apply column names to each dataframe:
    - manually set the names of two columns of the `activities` dataframe to "act\_id" and "activity"
    - Using the column name data in the `features` dataframe, apply column names to each variable in dataframes `testX` and `trainX`
    - manually set the name of the column in both `testY` and  `trY` to "act\_id"
    - manually set the name of the column in both `test_subjects` and  `tr_subjects` to "subject"
1. Construct temporary dataframes for each dataset into a single dataframe, containing all columns for the corresponding set of observations:
    - `testY`, `test_subjects`, and `testX` become `test_data`
    - `trY`, `tr_subjects`, and `trX` become `train_data`
1. Combine the two datasets `test_data` and `train_data` into a single dataframe, `all_data`, containing all 10,299 observations (rows)
1. Subset the `all_data` dataframe keeping only the columns we want.
    - To do this we use 'grepl()' to create a logical vector of all variables that we want to keep.
    - these will be 'act_id', 'subject' and any variable containing the strings "mean()", "std()" or "meanFreq()"
    - then we subset by that logical vector, creating our final dataframe `meanStd_data`
1. Add descriptive names for the activity of each row, by Merge()ing the `activities` and `meanStd_data` on their common `act_id` column
    - Then we remove the `act_id` column, leaving the new `activity` column
1. Update all column names to be more descriptive using the grep sub() function
1. use the aggregate() function to create a new tidy dataframe, grouping by activity and subject, and providing the mean of each variable within these groups
    - Update the column names of all the mean measurement columns, adding a prefix "AVG_"
1. Write the new dataframe to a .txt file called "tidy_averages.txt" using the write.table() function

