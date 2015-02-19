run_analysis <- function() {
    #Step 1
    #importing data and naming them accordingly
    x_train <- read.table("./data_files/X_train.txt")
    y_train <- read.table("./data_files/y_train.txt")
    sub_train <- read.table("./data_files/subject_train.txt")
    x_test <- read.table("./data_files/X_test.txt")
    y_test <- read.table("./data_files/y_test.txt")
    sub_test <- read.table("./data_files/subject_test.txt")
    features <- read.table("./data_files/features.txt")
    activity_labels <- read.table("./data_files/activity_labels.txt")
    
    #calling dplyr package
    library(dplyr)
    
    #Step 2
    #subsetting only the measurements on the mean and standard deviation for test and train sets
    x_train_mean_sd <- select(x_train, c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543))
    x_test_mean_sd <- select(x_test, c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543))
    feature_mean_sd <- features[c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543),]
    
    #joining subjects, activity labels and subsetted measurements for test and train sets into a single data frame respectively
    train <- cbind(sub_train, y_train, x_train_mean_sd)
    test <- cbind(sub_test, y_test, x_test_mean_sd)
    
    #combine test and train sets into single data set named as first_data_set.
    first_data_set <- rbind(train, test)
    
    #Step 3
    #adding header to first_data_set. Removed non alphanumeric characters.
    col_headings <- c("Subjects", "Activities", as.character(feature_mean_sd[,2]))
    col_headings <- tolower(gsub("[^[:alpha:]]", "", col_headings))
    names(first_data_set) <- col_headings
    
    #Step 4
    #providing descriptions for activities
    first_data_set$activities <- activity_labels[first_data_set$activities,2]
    
    #Step 5
    #creates a second, independent tidy data set with the average of each variable for each activity and each subject using aggregate()
    second_data_set <- aggregate(first_data_set[,3:ncol(first_data_set)], by=list(subjects=first_data_set$subjects, activities=first_data_set$activities), mean)
    
    #arranging second_data_set by the Subject for easy interpretation of the data set
    second_data_set_tidy <- arrange(second_data_set, subjects)
    
    #saving second_data_set_tidy as a .txt file under "second-tidy.txt" filename
    write.table(second_data_set_tidy, "second-tidy.txt", row.names=F, col.names=F)
}