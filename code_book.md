# Code Book for tidy_data.txt

All numeric features (variables) in time and frequency domains inside tidy_data.txt are average
measurement values over each activity and each subject.

### t = time domain

tBodyAccMeanX        : Mean of body acceleration signals in X direction  
tBodyAccMeanY        : Mean of body acceleration signals in Y direction  
tBodyAccMeanZ        : Mean of body acceleration signals in Z direction  
tGravityAccMeanX     : Mean of gravity acceleration signals in X direction  
tGravityAccMeanY     : Mean of gravity acceleration signals in Y direction  
tGravityAccMeanZ     : Mean of gravity acceleration signals in Z direction  
tBodyAccJerkMeanX    : Mean of jerk signals of body acceleration in X direction  
tBodyAccJerkMeanY    : Mean of jerk signals of body acceleration in Y direction  
tBodyAccJerkMeanZ    : Mean of jerk signals of body acceleration in Z direction  
tBodyGyroMeanX       : Mean of body gyroscope signals in X direction  
tBodyGyroMeanY       : Mean of body gyroscope signals in Y direction  
tBodyGyroMeanZ       : Mean of body gyroscope signals in Z direction  
tBodyGyroJerkMeanX   : Mean of body gyroscope jerk signals in X direction  
tBodyGyroJerkMeanY   : Mean of body gyroscope jerk signals in Y direction  
tBodyGyroJerkMeanZ   : Mean of body gyroscope jerk signals in Z direction  
tBodyAccMagMean      : Mean of body acceleration magnitudes  
tGravityAccMagMean   : Mean of gravity acceleration magnitudes  
tBodyAccJerkMagMean  : Mean of jerk magnitudes of body acceleration  
tBodyGyroMagMean     : Mean of body gyroscope magnitudes  
tBodyGyroJerkMagMean : Mean of body gyroscope jerk magnitudes  
tBodyAccStdX         : Standard deviation of body acceleration signals in X direction  
tBodyAccStdY         : Standard deviation of body acceleration signals in Y direction  
tBodyAccStdZ         : Standard deviation of body acceleration signals in Z direction  
tGravityAccStdX      : Standard deviation of gravity acceleration signals in X direction  
tGravityAccStdY      : Standard deviation of gravity acceleration signals in Y direction  
tGravityAccStdZ      : Standard deviation of gravity acceleration signals in Z direction  
tBodyAccJerkStdX     : Standard deviation of jerk signals of body acceleration in X direction  
tBodyAccJerkStdY     : Standard deviation of jerk signals of body acceleration in Y direction  
tBodyAccJerkStdZ     : Standard deviation of jerk signals of body acceleration in Z direction  
tBodyGyroStdX        : Standard deviation of body gyroscope signals in X direction  
tBodyGyroStdY        : Standard deviation of body gyroscope signals in Y direction  
tBodyGyroStdZ        : Standard deviation of body gyroscope signals in Z direction  
tBodyGyroJerkStdX    : Standard deviation of body gyroscope jerk signals in X direction  
tBodyGyroJerkStdY    : Standard deviation of body gyroscope jerk signals in Y direction  
tBodyGyroJerkStdZ    : Standard deviation of body gyroscope jerk signals in Z direction  
tBodyAccMagStd       : Standard deviation of body acceleration magnitudes  
tGravityAccMagStd    : Standard deviation of gravity acceleration magnitudes  
tBodyAccJerkMagStd   : Standard deviation of jerk magnitudes of body acceleration  
tBodyGyroMagStd      : Standard deviation of body gyroscope magnitudes  
tBodyGyroJerkMagStd  : Standard deviation of body gyroscope jerk magnitudes  

### f = frequency domain

fBodyAccMeanX        : Mean of body acceleration signals in X direction  
fBodyAccMeanY        : Mean of body acceleration signals in Y direction  
fBodyAccMeanZ        : Mean of body acceleration signals in Z direction  
fGravityAccMeanX     : Mean of gravity acceleration signals in X direction  
fGravityAccMeanY     : Mean of gravity acceleration signals in Y direction  
fGravityAccMeanZ     : Mean of gravity acceleration signals in Z direction  
fBodyAccJerkMeanX    : Mean of jerk signals of body acceleration in X direction  
fBodyAccJerkMeanY    : Mean of jerk signals of body acceleration in Y direction  
fBodyAccJerkMeanZ    : Mean of jerk signals of body acceleration in Z direction  
fBodyGyroMeanX       : Mean of body gyroscope signals in X direction  
fBodyGyroMeanY       : Mean of body gyroscope signals in Y direction  
fBodyGyroMeanZ       : Mean of body gyroscope signals in Z direction  
fBodyGyroJerkMeanX   : Mean of body gyroscope jerk signals in X direction  
fBodyGyroJerkMeanY   : Mean of body gyroscope jerk signals in Y direction  
fBodyGyroJerkMeanZ   : Mean of body gyroscope jerk signals in Z direction  
fBodyAccMagMean      : Mean of body acceleration magnitudes  
fGravityAccMagMean   : Mean of gravity acceleration magnitudes  
fBodyAccJerkMagMean  : Mean of jerk magnitudes of body acceleration  
fBodyGyroMagMean     : Mean of body gyroscope magnitudes  
fBodyGyroJerkMagMean : Mean of body gyroscope jerk magnitudes  
fBodyAccStdX         : Standard deviation of body acceleration signals in X direction  
fBodyAccStdY         : Standard deviation of body acceleration signals in Y direction  
fBodyAccStdZ         : Standard deviation of body acceleration signals in Z direction  
fGravityAccStdX      : Standard deviation of gravity acceleration signals in X direction  
fGravityAccStdY      : Standard deviation of gravity acceleration signals in Y direction  
fGravityAccStdZ      : Standard deviation of gravity acceleration signals in Z direction  
fBodyAccJerkStdX     : Standard deviation of jerk signals of body acceleration in X direction  
fBodyAccJerkStdY     : Standard deviation of jerk signals of body acceleration in Y direction  
fBodyAccJerkStdZ     : Standard deviation of jerk signals of body acceleration in Z direction  
fBodyGyroStdX        : Standard deviation of body gyroscope signals in X direction  
fBodyGyroStdY        : Standard deviation of body gyroscope signals in Y direction  
fBodyGyroStdZ        : Standard deviation of body gyroscope signals in Z direction  
fBodyGyroJerkStdX    : Standard deviation of body gyroscope jerk signals in X direction  
fBodyGyroJerkStdY    : Standard deviation of body gyroscope jerk signals in Y direction  
fBodyGyroJerkStdZ    : Standard deviation of body gyroscope jerk signals in Z direction  
fBodyAccMagStd       : Standard deviation of body acceleration magnitudes  
fGravityAccMagStd    : Standard deviation of gravity acceleration magnitudes  
fBodyAccJerkMagStd   : Standard deviation of jerk magnitudes of body acceleration  
fBodyGyroMagStd      : Standard deviation of body gyroscope magnitudes  
fBodyGyroJerkMagStd  : Standard deviation of body gyroscope jerk magnitudes  

Subject              : ID number of 30 subjects  
Activity             : LAYING, STANDING, SITTING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS

###  Transformations or work which were performed to clean up the data

Step 1: Downloading the original compressed dataset of "Human Activity Recognition Using Smartphone Dataset" from its site and saving it in a local file named "dataset.zip". Afterward the file is uncompressed.  

Step 2: The step of uncompressing dataset file results in a new folder named "UCI HAR Dataset" which hereafter becoming the working directory.  

Step 3: Reading some data files (train measurements and its subjects and features) and combining them into a train dataset.  

Step 4: Reading some more data files (test measurements and its subjects and features) and combining them into a test dataset.  

Step 5: Combining all data into one dataset.

Step 6: Searching for variable columns of the data set which compute the mean and standard deviation of measurements. The indicator for this search is the phrases 'mean()' and 'std()' within some variable names in the original dataset.  
Step 7: Based on the search result, a new dataset is extracted from the original dataset.  

Step 8: Changing the numeric values of column "Activity" into their respective declarative labels, such as  WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, etc.  

Step 9: Giving all columns with descriptive names that are read from the included file "features.txt".  

Step 10: Creating a new tidy dataset by  
    + making an ordered dataset from the extracted dataset,  
    + looping through each subject and each activity to compute average values for each column of measurements,  
    + accumulating all the average values into the tidy dataset along with their related subject and activity.  

Step 11: Changing the column names which still including the parentheses symbols.  

Step 12: Saving the tidy dataset into a file named "tidy_data.txt".  

