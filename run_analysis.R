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

## set the working directory to './galaxy/dataset'
setwd("./galaxy/dataset")

## create data.frames for each required dataset from text file
activities <- read.table("activity_labels.txt") # activity Codes
features <- read.table("features.txt")          # features are the variable names for the X files
testX <- read.table("test/X_test.txt")
testY <- read.table("test/y_test.txt")          # Y files contain the activity code for each row
test_subjects <- read.table("test/subject_test.txt")
trX <- read.table("train/X_train.txt")
trY <- read.table("train/y_train.txt")          # Y files contain the activity code for each row
tr_subjects <- read.table("train/subject_train.txt")

## change the column names for activities to "act_id" & "act_name"
colnames(activities) <- c("act_id", "act_name")

## Use features.txt to name the columns for our main data.frames
colnames(testX) <- features[,2]
colnames(trX) <- features[,2]

## change the column name for the single column in the 'Y' data.frames to "act_id"
colnames(testY) <- "act_id"
colnames(trY) <- "act_id"

## change the column name for the single column in the 'subjects' data.frames to "subj_id"
colnames(test_subjects) <- "subj_id"
colnames(tr_subjects) <- "subj_id"

## Merge the data sets
    ## first add the activity ID from the Y dataframes and the subj_id from the subject dataframes
    ## as additional columns to their respective X dataframes
    ## Then combine the two dataframes so that all observations are in one df
    ## remove the temporary data frames
test_data <- cbind(testY, test_subjects, testX)
train_data <- cbind(trY, tr_subjects, trX)
all_data <- rbind(test_data, train_data)
rm(test_data, testY, test_subjects, testX, train_data, trY, tr_subjects, trX)

## subset the data to include only those columns that we want
    ## create a vector containing the column indexes for each column we want to keep
    ## we do this by picking any column that has the strings "mean" or "std"
    ## subset by only those columns
all_names <- names(all_data)
keep_vect <- grepl("act_id|subj_id|[Mm]ean|std", all_names)

keep_set <- all_data[ , keep_vect]
rm(all_data)

## using the 'activities' df, change the activity codes to descriptive names
    ## merge (inner join) "activities" with "keep_set"
    ## remove the act_id column
keep_set <- merge(activities, keep_set)
to_drop <- "act_id"
keep_set <- keep_set[ , !(names(keep_set) %in% to_drop)]

## update column names to be more descriptive










