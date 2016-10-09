#Codebook or Dataset created by run_analysis.R

Date: October 8, 2016

This codebook describes the data set created by the run_analysis.R script. For details on the source data and the processing performed by the script please see README.md


###Tidy Dataset -- _meanStd\_data_  
 - Class = data.frame
 - 10,299 observations
 - 81 variables


**activity** --- Factor of 6 levels 

 - WALKING  
 - WALKING_UPSTAIRS  
 - WALKING_DOWNSTAIRS  
 - SITTING  
 - STANDING  
 - LAYING

**subject** --- integer (range = 1-30)

 - This is a subject ID number, which supposedly corresponds to an individual volunteer whose movement was recorded as part of this study. The actual subject name is unkown from the information available in this dataset.

####The remaining 79 variables listed below are all of type numeric
    
**time_BodyAccelerometer-Mean-X**  
    original name: tBodyAcc-mean()-X  
    
**time_BodyAccelerometer-Mean-Y**  
	original name: tBodyAcc-mean()-Y
    
**time_BodyAccelerometer-Mean-Z**  
	original name: tBodyAcc-mean()-Z
    
**time_BodyAccelerometer-Std-X**  
	original name: tBodyAcc-std()-X
    
**time_BodyAccelerometer-Std-Y**  
	original name: tBodyAcc-std()-Y
    
**time_BodyAccelerometer-Std-Z**  
	original name: tBodyAcc-std()-Z
    
**time_GravityAccelerometer-Mean-X**  
	original name: tGravityAcc-mean()-X
    
**time_GravityAccelerometer-Mean-Y**  
	original name: tGravityAcc-mean()-Y
    
**time_GravityAccelerometer-Mean-Z**  
	original name: tGravityAcc-mean()-Z
    
**time_GravityAccelerometer-Std-X**  
	original name: tGravityAcc-std()-X
    
**time_GravityAccelerometer-Std-Y**  
	original name: tGravityAcc-std()-Y
    
**time_GravityAccelerometer-Std-Z**  
	original name: tGravityAcc-std()-Z
    
**time_BodyAccelerometer_Jerk-Mean-X**  
	original name: tBodyAccJerk-mean()-X
    
**time_BodyAccelerometer_Jerk-Mean-Y**  
	original name: tBodyAccJerk-mean()-Y
    
**time_BodyAccelerometer_Jerk-Mean-Z**  
	original name: tBodyAccJerk-mean()-Z
    
**time_BodyAccelerometer_Jerk-Std-X**  
	original name: tBodyAccJerk-std()-X
    
**time_BodyAccelerometer_Jerk-Std-Y**  
	original name: tBodyAccJerk-std()-Y
    
**time_BodyAccelerometer_Jerk-Std-Z**  
	original name: tBodyAccJerk-std()-Z
    
**time_BodyGyroscope-Mean-X**  
	original name: tBodyGyro-mean()-X
    
**time_BodyGyroscope-Mean-Y**  
	original name: tBodyGyro-mean()-Y
    
**time_BodyGyroscope-Mean-Z**  
	original name: tBodyGyro-mean()-Z
    
**time_BodyGyroscope-Std-X**  
	original name: tBodyGyro-std()-X
    
**time_BodyGyroscope-Std-Y**  
	original name: tBodyGyro-std()-Y
    
**time_BodyGyroscope-Std-Z**  
	original name: tBodyGyro-std()-Z
    
**time_BodyGyroscope_Jerk-Mean-X**  
	original name: tBodyGyroJerk-mean()-X
    
**time_BodyGyroscope_Jerk-Mean-Y**  
	original name: tBodyGyroJerk-mean()-Y
    
**time_BodyGyroscope_Jerk-Mean-Z**  
	original name: tBodyGyroJerk-mean()-Z
    
**time_BodyGyroscope_Jerk-Std-X**  
	original name: tBodyGyroJerk-std()-X
    
**time_BodyGyroscope_Jerk-Std-Y**  
	original name: tBodyGyroJerk-std()-Y
    
**time_BodyGyroscope_Jerk-Std-Z**  
	original name: tBodyGyroJerk-std()-Z
    
**time_BodyAccelerometer_Magnitude-Mean**  
	original name: tBodyAccMag-mean()
    
**time_BodyAccelerometer_Magnitude-Std**  
	original name: tBodyAccMag-std()
    
**time_GravityAccelerometer_Magnitude-Mean**  
	original name: tGravityAccMag-mean()
    
**time_GravityAccelerometer_Magnitude-Std**  
	original name: tGravityAccMag-std()
    
**time_BodyAccelerometer_JerkMagnitude-Mean**  
	original name: tBodyAccJerkMag-mean()
    
**time_BodyAccelerometer_JerkMagnitude-Std**  
	original name: tBodyAccJerkMag-std()
    
**time_BodyGyroscope_Magnitude-Mean**  
	original name: tBodyGyroMag-mean()
    
**time_BodyGyroscope_Magnitude-Std**  
	original name: tBodyGyroMag-std()
    
**time_BodyGyroscope_JerkMagnitude-Mean**  
	original name: tBodyGyroJerkMag-mean()
    
**time_BodyGyroscope_JerkMagnitude-Std**  
	original name: tBodyGyroJerkMag-std()
    
**freq_BodyAccelerometer-Mean-X**  
	original name: fBodyAcc-mean()-X
    
**freq_BodyAccelerometer-Mean-Y**  
	original name: fBodyAcc-mean()-Y
    
**freq_BodyAccelerometer-Mean-Z**  
	original name: fBodyAcc-mean()-Z
    
**freq_BodyAccelerometer-Std-X**  
	original name: fBodyAcc-std()-X
    
**freq_BodyAccelerometer-Std-Y**  
	original name: fBodyAcc-std()-Y
    
**freq_BodyAccelerometer-Std-Z**  
	original name: fBodyAcc-std()-Z
    
**freq_BodyAccelerometer-MeanFreq-X**  
	original name: fBodyAcc-meanFreq()-X
    
**freq_BodyAccelerometer-MeanFreq-Y**  
	original name: fBodyAcc-meanFreq()-Y
    
**freq_BodyAccelerometer-MeanFreq-Z**  
	original name: fBodyAcc-meanFreq()-Z
    
**freq_BodyAccelerometer_Jerk-Mean-X**  
	original name: fBodyAccJerk-mean()-X
    
**freq_BodyAccelerometer_Jerk-Mean-Y**  
	original name: fBodyAccJerk-mean()-Y
    
**freq_BodyAccelerometer_Jerk-Mean-Z**  
	original name: fBodyAccJerk-mean()-Z
    
**freq_BodyAccelerometer_Jerk-Std-X**  
	original name: fBodyAccJerk-std()-X
    
**freq_BodyAccelerometer_Jerk-Std-Y**  
	original name: fBodyAccJerk-std()-Y
    
**freq_BodyAccelerometer_Jerk-Std-Z**  
	original name: fBodyAccJerk-std()-Z
    
**freq_BodyAccelerometer_Jerk-MeanFreq-X**  
	original name: fBodyAccJerk-meanFreq()-X
    
**freq_BodyAccelerometer_Jerk-MeanFreq-Y**  
	original name: fBodyAccJerk-meanFreq()-Y
    
**freq_BodyAccelerometer_Jerk-MeanFreq-Z**  
	original name: fBodyAccJerk-meanFreq()-Z
    
**freq_BodyGyroscope-Mean-X**  
	original name: fBodyGyro-mean()-X
    
**freq_BodyGyroscope-Mean-Y**  
	original name: fBodyGyro-mean()-Y
    
**freq_BodyGyroscope-Mean-Z**  
	original name: fBodyGyro-mean()-Z
    
**freq_BodyGyroscope-Std-X**  
	original name: fBodyGyro-std()-X
    
**freq_BodyGyroscope-Std-Y**  
	original name: fBodyGyro-std()-Y
    
**freq_BodyGyroscope-Std-Z**  
	original name: fBodyGyro-std()-Z
    
**freq_BodyGyroscope-MeanFreq-X**  
	original name: fBodyGyro-meanFreq()-X
    
**freq_BodyGyroscope-MeanFreq-Y**  
	original name: fBodyGyro-meanFreq()-Y
    
**freq_BodyGyroscope-MeanFreq-Z**  
	original name: fBodyGyro-meanFreq()-Z
    
**freq_BodyAccelerometer_Magnitude-Mean**  
	original name: fBodyAccMag-mean()
    
**freq_BodyAccelerometer_Magnitude-Std**  
	original name: fBodyAccMag-std()
    
**freq_BodyAccelerometer_Magnitude-MeanFreq**  
	original name: fBodyAccMag-meanFreq()
    
**freq_BodyAccelerometer_JerkMagnitude-Mean**  
	original name: fBodyBodyAccJerkMag-mean()
    
**freq_BodyAccelerometer_JerkMagnitude-Std**  
	original name: fBodyBodyAccJerkMag-std()
    
**freq_BodyAccelerometer_JerkMagnitude-MeanFreq**  
	original name: fBodyBodyAccJerkMag-meanFreq()
    
**freq_BodyGyroscope_Magnitude-Mean**  
	original name: fBodyBodyGyroMag-mean()
    
**freq_BodyGyroscope_Magnitude-Std**  
	original name: fBodyBodyGyroMag-std()
    
**freq_BodyGyroscope_Magnitude-MeanFreq**  
	original name: fBodyBodyGyroMag-meanFreq()
    
**freq_BodyGyroscope_JerkMagnitude-Mean**  
	original name: fBodyBodyGyroJerkMag-mean()
    
**freq_BodyGyroscope_JerkMagnitude-Std**  
	original name: fBodyBodyGyroJerkMag-std()
    
**freq_BodyGyroscope_JerkMagnitude-MeanFreq**  
	original name: fBodyBodyGyroJerkMag-meanFreq()


### Tidy Data Set of Averages
The dataset described above was grouped by **activity** and **subject** and the mean() function was run on each variable. The output is a dataframe called `subject_activity_AVG`.

This new summary dataset was written to a text file `tidy_averages.txt` using write.table()