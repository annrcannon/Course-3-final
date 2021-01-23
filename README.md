# Course-3-final
Final project for Data Science Coursera course on Getting and Cleaning Data

#Script description
This script first reads in 6 data files - 3 each for the test and training data.  One file gives the actual measurements recorded, one file gives the subject id, and the last file gives the activity being done (coded as 1 through 6) when the measurements were recorded.  Additionally, two more files are read in - one with names of the activities and one with the names of the measurements.

Next we limit the measurement files to only those columns that give measurements consisting of means or standard deviations.  

This is followed by assigning names to the columns of measurements.

At this point we combine the measurement data frames with the vectors of subject IDs and activities, and assign those columns to have the names subjectid and activity respectively.

Next we combine the test and training sets using the rbind command and replace the activity numbers with names.

Finally we create a new tidy data set with the average for each column for each subject/activity pair.

#Codebook

subjectid  (integer) 1, 2, 3,... 30

activity   (factor) WALKING WALKING_UPSTAIRS wALKING_DOWNSTAIRS
                    SITTING STANDING LAYING
tBodyAcc-mean()-X   (numeric) average value per subject per activity 

tBodyAcc-mean()-Y     (numeric) average value per subject per activity 

tBodyAcc-mean()-Z     (numeric) average value per subject per activity 

tBodyAcc-std()-X       (numeric) average value per subject per activity

tBodyAcc-std()-Y      (numeric) average value per subject per activity

tBodyAcc-std()-Z       (numeric) average value per subject per activity 

tGravityAcc-mean()-X    (numeric) average value per subject per activity

tGravityAcc-mean()-Y     (numeric) average value per subject per activity     

tGravityAcc-mean()-Z      (numeric) average value per subject per activity

tGravityAcc-std()-X        (numeric) average value per subject per activity

tGravityAcc-std()-Y        (numeric) average value per subject per activity

tGravityAcc-std()-Z         (numeric) average value per subject per activity

tBodyAccJerk-mean()-X     (numeric) average value per subject per activity

tBodyAccJerk-mean()-Y    (numeric) average value per subject per activity

tBodyAccJerk-mean()-Z     (numeric) average value per subject per activity

tBodyAccJerk-std()-X      (numeric) average value per subject per activity

tBodyAccJerk-std()-Y       (numeric) average value per subject per activity

tBodyAccJerk-std()-Z        (numeric) average value per subject per activity

tBodyGyro-mean()-X          (numeric) average value per subject per activity

tBodyGyro-mean()-Y          (numeric) average value per subject per activity

tBodyGyro-mean()-Z           (numeric) average value per subject per activity

tBodyGyro-std()-X             (numeric) average value per subject per activity

tBodyGyro-std()-Y             (numeric) average value per subject per activity

tBodyGyro-std()-Z           (numeric) average value per subject per activity

tBodyGyroJerk-mean()-X       (numeric) average value per subject per activity

tBodyGyroJerk-mean()-Y        (numeric) average value per subject per activity

tBodyGyroJerk-mean()-Z         (numeric) average value per subject per activity

tBodyGyroJerk-std()-X          (numeric) average value per subject per activity

tBodyGyroJerk-std()-Y          (numeric) average value per subject per activity

tBodyGyroJerk-std()-Z         (numeric) average value per subject per activity

tBodyAccMag-mean()            (numeric) average value per subject per activity

tBodyAccMag-std()             (numeric) average value per subject per activity

tGravityAccMag-mean()         (numeric) average value per subject per activity

tGravityAccMag-std()          (numeric) average value per subject per activity

tBodyAccJerkMag-mean()         (numeric) average value per subject per activity

tBodyAccJerkMag-std()          (numeric) average value per subject per activity

tBodyGyroMag-mean()            (numeric) average value per subject per activity

tBodyGyroMag-std()             (numeric) average value per subject per activity

tBodyGyroJerkMag-mean()         (numeric) average value per subject per activity

tBodyGyroJerkMag-std()         (numeric) average value per subject per activity

fBodyAcc-mean()-X               (numeric) average value per subject per activity

fBodyAcc-mean()-Y              (numeric) average value per subject per activity

fBodyAcc-mean()-Z              (numeric) average value per subject per activity

fBodyAcc-std()-X               (numeric) average value per subject per activity

fBodyAcc-std()-Y                (numeric) average value per subject per activity

fBodyAcc-std()-Z               (numeric) average value per subject per activity

fBodyAcc-meanFreq()-X          (numeric) average value per subject per activity

fBodyAcc-meanFreq()-Y          (numeric) average value per subject per activity

fBodyAcc-meanFreq()-Z          (numeric) average value per subject per activity

fBodyAccJerk-mean()-X         (numeric) average value per subject per activity

fBodyAccJerk-mean()-Y          (numeric) average value per subject per activity

fBodyAccJerk-mean()-Z          (numeric) average value per subject per activity

fBodyAccJerk-std()-X            (numeric) average value per subject per activity

fBodyAccJerk-std()-Y           (numeric) average value per subject per activity

fBodyAccJerk-std()-Z           (numeric) average value per subject per activity

fBodyAccJerk-meanFreq()-X      (numeric) average value per subject per activity

fBodyAccJerk-meanFreq()-Y      (numeric) average value per subject per activity

fBodyAccJerk-meanFreq()-Z      (numeric) average value per subject per activity

fBodyGyro-mean()-X             (numeric) average value per subject per activity

fBodyGyro-mean()-Y             (numeric) average value per subject per activity

fBodyGyro-mean()-Z             (numeric) average value per subject per activity

fBodyGyro-std()-X             (numeric) average value per subject per activity

fBodyGyro-std()-Y               (numeric) average value per subject per activity

fBodyGyro-std()-Z              (numeric) average value per subject per activity

fBodyGyro-meanFreq()-X          (numeric) average value per subject per activity

fBodyGyro-meanFreq()-Y         (numeric) average value per subject per activity

fBodyGyro-meanFreq()-Z          (numeric) average value per subject per activity

fBodyAccMag-mean()             (numeric) average value per subject per activity

fBodyAccMag-std()               (numeric) average value per subject per activity

fBodyAccMag-meanFreq()         (numeric) average value per subject per activity

fBodyBodyAccJerkMag-mean()      (numeric) average value per subject per activity

fBodyBodyAccJerkMag-std()      (numeric) average value per subject per activity

fBodyBodyAccJerkMag-meanFreq()  (numeric) average value per subject per activity

fBodyBodyGyroMag-mean()        (numeric) average value per subject per activity

fBodyBodyGyroMag-std()         (numeric) average value per subject per activity

fBodyBodyGyroMag-meanFreq()    (numeric) average value per subject per activity

fBodyBodyGyroJerkMag-mean()     (numeric) average value per subject per activity

fBodyBodyGyroJerkMag-std()     (numeric) average value per subject per activity

fBodyBodyGyroJerkMag-meanFreq()  (numeric) average value per subject per activity

