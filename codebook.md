# Codebook for run_analysis.R

This is a John Hopkins - Coursera course project submission. 

Package required: *dplyr*

## Data Source

Wearables data obtained from following source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Source Data Set:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The essential source data files are described below:

Filename | Description | Variables & Observations
------------ | ------------- | -------------  
activity_labels.txt | Labels of activities carried out in experiment | 1 var & 6 obs
features.txt | List of features from manipulation of accelerometer and gyroscope measurements | 1 var & 561 obs
test/subject\_test.txt | Subject ID in the test group listed by activities performed | 1 var & 2947 obs
test/y\_test.txt | Activities carried out by Subjects in test group | 1 var & 2947 obs
test/X\_test.txt | List of measurements from the accelerometer and gyroscope measurements in test group | 561 vars & 2947 obs
train/subject\_train.txt | Subject ID in the train group listed by activities performed | 1 var & 7352 obs
train/y\_train.txt | Activities carried out by Subjects in train group | 1 var & 7352 obs
train/X\_train.txt | List of measurements from the accelerometer and gyroscope measurements in train group | 561 vars & 7352 obs

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Through the above treatment of accelerometer and gyroscope measurement data, a list of 561 features can be found in "features.txt". For the purpose of this project, we will focus on the 66 mean and standard deviation measurements. 

## Output Data

The features in test/X\_test.txt and train/X\_train.txt were mapped to their corresponding Subjects and Activities and the 66 mean and standard deviation features from each group were extracted before the data were further combined into a single data set with 10299 observations of 68 variables. 

The feature labels were tidied by removing the non alphanumeric characters e.g. "()" and "-" and turning them into lowercase. 

Finally, a second independent tidy dataset (180 obs & 68 vars) was created with the mean of each measurement for each of the six activities and each of the 30 subjects. The final output dataset has the following variables (Refer to "features_info.txt" for the descriptive variable names):

     $ subjects                
     $ activities              
     $ tbodyaccmeanx           
     $ tbodyaccmeany           
     $ tbodyaccmeanz           
     $ tbodyaccstdx            
     $ tbodyaccstdy            
     $ tbodyaccstdz            
     $ tgravityaccmeanx        
     $ tgravityaccmeany        
     $ tgravityaccmeanz        
     $ tgravityaccstdx         
     $ tgravityaccstdy         
     $ tgravityaccstdz         
     $ tbodyaccjerkmeanx       
     $ tbodyaccjerkmeany       
     $ tbodyaccjerkmeanz       
     $ tbodyaccjerkstdx        
     $ tbodyaccjerkstdy        
     $ tbodyaccjerkstdz        
     $ tbodygyromeanx          
     $ tbodygyromeany          
     $ tbodygyromeanz          
     $ tbodygyrostdx           
     $ tbodygyrostdy           
     $ tbodygyrostdz           
     $ tbodygyrojerkmeanx      
     $ tbodygyrojerkmeany      
     $ tbodygyrojerkmeanz      
     $ tbodygyrojerkstdx       
     $ tbodygyrojerkstdy       
     $ tbodygyrojerkstdz       
     $ tbodyaccmagmean         
     $ tbodyaccmagstd          
     $ tgravityaccmagmean      
     $ tgravityaccmagstd       
     $ tbodyaccjerkmagmean      
     $ tbodyaccjerkmagstd       
     $ tbodygyromagmean         
     $ tbodygyromagstd         
     $ tbodygyrojerkmagmean    
     $ tbodygyrojerkmagstd     
     $ fbodyaccmeanx           
     $ fbodyaccmeany           
     $ fbodyaccmeanz           
     $ fbodyaccstdx            
     $ fbodyaccstdy            
     $ fbodyaccstdz            
     $ fbodyaccjerkmeanx       
     $ fbodyaccjerkmeany       
     $ fbodyaccjerkmeanz       
     $ fbodyaccjerkstdx        
     $ fbodyaccjerkstdy        
     $ fbodyaccjerkstdz        
     $ fbodygyromeanx          
     $ fbodygyromeany          
     $ fbodygyromeanz          
     $ fbodygyrostdx           
     $ fbodygyrostdy           
     $ fbodygyrostdz           
     $ fbodyaccmagmean         
     $ fbodyaccmagstd          
     $ fbodybodyaccjerkmagmean       
     $ fbodybodyaccjerkmagstd  
     $ fbodybodygyromagmean    
     $ fbodybodygyromagstd     
     $ fbodybodygyrojerkmagmean     
     $ fbodybodygyrojerkmagstd