#README


## Getting and Cleaning Data Course Project

This is a John Hopkins - Coursera course project submission. Data source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


### Files in this repo

    * README.md -- This is what you are reading currently
    * codebook.md -- Describes the variables, the data, and transformations that I did to clean up the data
    * run_analysis.R -- actual code
    * second-tidy.txt -- output file from run_analysis script
    * data_files/ -- All the necessary data files for the script downloaded from the data source


### Goals of run_analysis.R script

Recap on the goal of run_analysis.R as follows:

    1. Merges the training and the test sets to create one data set;
    2. Extracts only the measurements on the mean and standard deviation for each measurement;
    3. Uses descriptive activity names to name the activities in the data set;
    4. Labels the data set with descriptive variable names; and
    5. From the data set in point 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

All the data files (downloaded from the data source above) called by the script are available in this repo in the *data_files* directory for convenience. Note that the *dplyr* packaged is used in this script.

The script outputs a "second-tidy.txt" file in the working directory.


### What the script does

    1. Step 1
        i. Import wearables data files and naming them accordingly.
        ii. Import dplyr package.
        
    2. Step 2
        i. Subset only the measurements on the mean and standard deviation for test and train sets.
        ii. Join subjects, activity labels and subsetted measurements for test and train sets into a single data frame respectively
        iii. Combine test and train sets into single data set named as first_data_set.
        
    3.  Step 3
        i. Add header to first_data_set. Removed non alphanumeric characters.
        
    4.  Step 4
        i. Provide descriptions for activities.
        
    5.  Step 5
        i. Create a second, independent tidy data set with the average of each variable for each activity and each subject using aggregate().
        ii. Save second_data_set_tidy as a .txt file under "second-tidy.txt" filename in the working directory.

