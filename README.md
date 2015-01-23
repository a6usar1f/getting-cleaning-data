# README.md

### Running the script

1. Run R or Rstudio
2. Set the working directory to the folder containing "run_analysis.R"
3. Source the script by giving a command line: source("run_analysis.R")
4. Run the script by calling: run_analysis()

### Content of the script

Below is the brief explanations of all lines in the script "run_analysis.R" that was created as a part of the course project of "Getting and Cleaning Data" in Coursera.

Lines 1 - 4: A comment to explain the aims of the script.  

Lines 8 - 10: Downloading the original compressed dataset of "Human Activity Recognition Using Smartphone Dataset" from its site and saving it in a local file named "dataset.zip". Afterward the file is uncompreesed using the R function: unzip().  

Lines 13 - 14: The step of uncompressing dataset file results in a new folder named "UCI HAR Dataset" which hereafter becoming the working directory.  

Lines 17 - 20: Reading some data files (train measurements and its subjects and features) and combining them into a train dataset.  

Lines 23 - 26: Reading some more data files (test measurements and its subjects and features) and combining them into a test dataset.  

Line 29: Combining all data into one dataset.

Lines 32 - 36: Searching for variable columns of the data set which compute the mean and standrad deviation of measurements. The indicator for this search is the phrases 'mean()' and 'std()' within some variable names in the original dataset.  

Lines 39 - 40: Based on the search result, a new dataset is extracted from the original dataset.  

Lines 43 - 57: Changing the numeric values of column "Activity" into their respective declarative labels, such as  WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, etc.  

Lines 60 - 61: Giving all columns with descriptive names that are read from the included file "features.txt".  

Lines 64 - 85: Creating a new tidy dataset by
    + making an ordered dataset from the extracted dataset,
    + looping through each subject and each activity to compute average values for each column of measurements,
    + accumulating all the average values into the tidy dataset along with their related subject and activity.  

Lines 88 - 92 : Changing the column names which still including the parentheses symbols.  

Line 95: saving the tidy dataset into a file named "tidy_data.txt".  
