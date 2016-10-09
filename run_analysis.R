## Getting & Cleaning Data - Week 4
## JHU Data Science Specialization through Coursera 
## Final Programming Assignment -- 
##
##
## by: Geoff Maites -- October 7, 2016
##
## filename: run_analysis.R
## ---------------------------------------------------

## download the zip file, if it does not already exist
## files goes into a folder called 'galaxy'
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!dir.exists("galaxy")) {
    dir.create("galaxy")
    download.file(fileUrl, destfile = "./galaxy/dataset.zip")
} else if(!file.exists("galaxy/dataset.zip")) {
    download.file(fileUrl, destfile = "./galaxy/dataset.zip")
}

## unzip the file and rename the top-level folder to 'dataset'
if(!dir.exists("./galaxy/dataset")){
    zip_file <- "galaxy/dataset.zip"
    unzip(zip_file, exdir = "galaxy")
    file.rename("./galaxy/UCI HAR Dataset", "./galaxy/dataset")
}

## create data.frames for each required dataset from text file
activities <- read.table("galaxy/dataset/activity_labels.txt") # activity Codes
features <- read.table("galaxy/dataset/features.txt")          # features are the variable names for the X files
testX <- read.table("galaxy/dataset/test/X_test.txt")
testY <- read.table("galaxy/dataset/test/y_test.txt")          # Y files contain the activity code for each row
test_subjects <- read.table("galaxy/dataset/test/subject_test.txt")
trX <- read.table("galaxy/dataset/train/X_train.txt")
trY <- read.table("galaxy/dataset/train/y_train.txt")          # Y files contain the activity code for each row
tr_subjects <- read.table("galaxy/dataset/train/subject_train.txt")

## change the column names for activities to "act_id" & "activity"
colnames(activities) <- c("act_id", "activity")

## Use features.txt to name the columns for our main data.frames
colnames(testX) <- features[,2]
colnames(trX) <- features[,2]

## change the column name for the single column in the 'Y' data.frames to "act_id"
colnames(testY) <- "act_id"
colnames(trY) <- "act_id"

## change the column name for the single column in the 'subjects' data.frames to "subject"
colnames(test_subjects) <- "subject"
colnames(tr_subjects) <- "subject"

## Merge the data sets
    ## first construct the two datasets -- "test" and "train" into two dataframes
    ## Then combine the two dataframes so that all observations are in one df
    ## remove all superfluous temporary dataframes 
test_data <- cbind(testY, test_subjects, testX)
train_data <- cbind(trY, tr_subjects, trX)
all_data <- rbind(test_data, train_data)
rm(test_data, testY, test_subjects, testX, train_data, trY, tr_subjects, trX, features)

## subset the data to include only those columns that we want
    ## create a vector containing the column indexes for each column we want to keep
    ## we do this by picking any column that has the strings "mean" or "std"
    ## subset by only those columns
all_names <- names(all_data)
keep_vect <- grepl("act_id|subject|mean\\(\\)|meanFreq\\(\\)|std\\(\\)", all_names)

meanStd_data <- all_data[ , keep_vect]

## using the 'activities' df, change the activity codes to descriptive names
## merge (inner join) "activities" with "meanStd_data"
## remove the 'act_id' column
meanStd_data <- merge(activities, meanStd_data)

to_drop <- "act_id"
meanStd_data <- meanStd_data[ , !(names(meanStd_data) %in% to_drop)]

## update column names to be more descriptive
headings <- names(meanStd_data)
headings <- sub("^t", "time_", headings)
headings <- sub("^f", "freq_", headings)
headings <- sub("\\(\\)", "", headings)
headings <- sub("BodyBody", "Body", headings)
headings <- sub("Acc(-)*", "Accelerometer_", headings)
headings <- sub("Gyro(-)*", "Gyroscope_", headings)
headings <- sub("Mag", "Magnitude", headings)
headings <- sub("[-_]mean", "-Mean", headings)
headings <- sub("[-_]std", "-Std", headings)
names(meanStd_data) <- headings

## Create a second tidy data set with the average (mean) 
## for each variable, grouping by activity and subject
    ## first create a new dataframe
subject_activity_AVG <- aggregate(. ~ activity + subject, data = meanStd_data, mean)
    ## update the column names to include a prefix AVG
temp_names <- colnames(subject_activity_AVG)
temp_names <- paste("AVG", temp_names, sep = "_")
temp_names[1] <- "activity"
temp_names[2] <- "subject"
colnames(subject_activity_AVG) <- temp_names

## remove other variables no longer needed
rm(all_data, all_names, keep_vect, activities, to_drop, headings, fileUrl, temp_names)

    ## Now write this to a file
write.table(subject_activity_AVG, file = "tidy_averages.txt")
