# run_analysis.R : A script to prepare a tidy dataset out of observation data
#                  collected from smatrphone accelerometers and gyroscopes.
#                  Course Project of Coursera "Getting and Cleaning Data"
# Agus Arif, 02-08-2014

run_analysis <- function() {
  ## Downloading the data file and unzipping it
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile = "./dataset.zip", method = "wget")
  unzip("./dataset.zip")

  ## Setting the working directory
  workDir <- "./UCI HAR Dataset/"
  setwd(workDir)
  
  ## Reading the train data and combining them
  x_train <- read.table("./train/X_train.txt")
  s_train <- read.table("./train/subject_train.txt")
  y_train <- read.table("./train/y_train.txt")
  d_train <- cbind(x_train, s_train, y_train)
  
  ## Reading the test data and combining them
  x_test <- read.table("./test/X_test.txt")
  s_test <- read.table("./test/subject_test.txt")
  y_test <- read.table("./test/y_test.txt")
  d_test <- cbind(x_test, s_test, y_test)
  
  ## Merging the train and test data
  all_data <- rbind(d_train, d_test)

  ## Searching features which includes '-mean()' and '-std()'
  feats <- read.table("./features.txt")
  meanL <- grepl("-mean()", feats[, 2], fixed = TRUE)
  meanI <- which(meanL)
  stdL <- grepl("-std()", feats[, 2], fixed = TRUE)
  stdI <- which(stdL)

  ## Extracting the mean and standard deviations of measurements
  extractI <- sort(c(meanI, stdI, 562, 563))
  ext_data <- all_data[, extractI]

  ## Using descriptive activity names to name the activities
  act_label <- read.table("./activity_labels.txt")
  act_data <- ext_data[, 68]
  a_label <- as.character(act_label[1, 2])
  act_data[act_data == 1] <- a_label
  a_label <- as.character(act_label[2, 2])
  act_data[act_data == 2] <- a_label
  a_label <- as.character(act_label[3, 2])
  act_data[act_data == 3] <- a_label
  a_label <- as.character(act_label[4, 2])
  act_data[act_data == 4] <- a_label
  a_label <- as.character(act_label[5, 2])
  act_data[act_data == 5] <- a_label
  a_label <- as.character(act_label[6, 2])
  act_data[act_data == 6] <- a_label
  ext_data[, 68] <- act_data

  ## Labelling the data with descriptive variable names
  feats_name <- as.character(feats[c(meanI, stdI), 2])
  names(ext_data) <- c(feats_name, "Subject", "Activity")
  
  ## Creating the tidy data
  ord_data <- ext_data[order(ext_data$Subject, ext_data$Activity), ]
  act_label <- unique(ord_data$Activity)
  for (i in 1:30)
  {
    for (j in 1:6)
    {
      a_label <- act_label[j]
      mean_row <- which(ord_data$Subject == i & ord_data$Activity == a_label)
      mean_data <- sapply(ord_data[mean_row, 1:66], mean)
      names(mean_data) <- NULL
      dim(mean_data) <- c(1, 66)
      if (i == 1 & j == 1)
      {
        tidy_data <- data.frame(mean_data, i, a_label)
      }
      else
      {
        new_data <- data.frame(mean_data, i, a_label)
        tidy_data <- rbind(tidy_data, new_data)
      }
    }
  }
  
  ## Naming the variables in the tidy data
  feats_name <- sub("-mean\\(\\)-", "Mean", feats_name)
  feats_name <- sub("-mean\\(\\)", "Mean", feats_name)
  feats_name <- sub("-std\\(\\)-", "Std", feats_name)
  feats_name <- sub("-std\\(\\)", "Std", feats_name)
  names(tidy_data) <- c(feats_name, "Subject", "Activity")
  
  ## Saving the tidy data into a file
  write.table(tidy_data, "../tidy_data.txt", row.names = FALSE)
}
