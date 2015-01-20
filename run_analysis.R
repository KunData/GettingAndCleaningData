## *****************************
## * Getting and Cleaning Data *
## * Course Project            *
## * run_analysis.R            *
## *****************************



## ******************************************************************************************
## * To run this script, set a working directory first and store 'run_analysis.R' under it. *
## * If 'getdata_projectfiles_UCI HAR Dataset.zip' does not exist, download and unzip it    *
## ******************************************************************************************

if( !file.exists( "./getdata_projectfiles_UCI HAR Dataset.zip" ) )
{
	fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	fileUrl2 <- sub('https', 'http', fileUrl1)
	download.file(fileUrl2, destfile = "./getdata_projectfiles_UCI HAR Dataset.zip", mode = "wb")
	unzip("getdata_projectfiles_UCI HAR Dataset.zip", overwrite = TRUE, exdir = ".", unzip = "internal")
}

## set the new working directory as './UCI HAR Dataset' for a easier access to the unzipped data
wrkDir = getwd()
newWrkDir <- paste(wrkDir, "UCI HAR Dataset", sep = "/")
setwd(newWrkDir)

	
## ************************************************************************
## * Read all data into R. Extract all feature names which contain 'mean' *
## * or 'std' and store them in 'meanStdFeats'. Generate data frames      * 
## * 'training' and 'test' with related data sets                         *                                           
## ************************************************************************ 

## Load 'X_train.txt', 'y_train.txt' and 'subject_train.txt' into 'xTrain',
## 'yTrain' and 'subTrain', respectively
xTrain <- read.table("./train/X_train.txt", header = FALSE, na.strings = "N/A", fill = TRUE)											
yTrain <- read.table("./train/y_train.txt", header = FALSE, sep = "\n", na.strings = "N/A")											
subTrain <- read.table("./train/subject_train.txt", header = FALSE, sep = "\n", na.strings = "N/A")

## Load 'X_test.txt', 'y_test.txt' and 'subject_test.txt' into 'xTest',
## 'yTest' and 'subTest', respectively
xTest <- read.table("./test/X_test.txt", header = FALSE, na.strings = "N/A", fill = TRUE)
yTest <- read.table("./test/y_test.txt", header = FALSE, sep = "\n", na.strings = "N/A")
subTest <- read.table("./test/subject_test.txt", header = FALSE, sep = "\n", na.strings = "N/A")

## Read 'features.txt' into 'feats'
feats <- read.table("./features.txt", header = FALSE, sep = c(" ", "\n"), na.strings = "N/A", 
						stringsAsFactors = FALSE)
																	
meanStdFeats <- feats[grep("mean|std", feats$V2), ]
																	
## Read 'activity_labels.txt' into 'actLabels'
actLabels <- read.table("./activity_labels.txt", header = FALSE, sep = c(" ", "\n"),
							na.strings = "N/A", stringsAsFactors = FALSE)
																
## Combine 'yTrain', 'subTrain' and 'xTrain' to form a data frame of 'training'.
## So do 'yTest', 'subTest' and 'xTest' to form 'test'
training <- cbind(yTrain, subTrain, xTrain)
test <- cbind(yTest, subTest, xTest)


## *************************
## * Implement Task 1 to 5 *
## *************************   
                      
## Task 1: Merges the training and the test sets to create one data set
merged <- rbind(training, test)

## Task 2: Extracts only the measurements on the mean and standard deviation
##         for each measurement.
meanStdOnly <- merged[, c(1, 2, meanStdFeats$V1 + 2)]

## Task 3: Uses descriptive activity names to name the activities in the data set
meanStdOnly[, 1] <- actLabels[meanStdOnly[, 1], 2]

## Task 4: Appropriately labels the data set with descriptive variable names
names(meanStdOnly)[1] <- "activity"
names(meanStdOnly)[2] <- "subject"
names(meanStdOnly)[3:ncol(meanStdOnly)] <- meanStdFeats[, 2]

## Task 5: From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.
tidyData <- aggregate(. ~ activity + subject, data = meanStdOnly, FUN = mean, na.rm = TRUE)

## Write 'tidyData' to 'tidyAveByActivityAndSubject.txt'			
write.table(tidyData, file = "./tidyAveByActivityAndSubject.txt", sep = " ", eol = "\n",
				na = "NA", dec = ".", row.names = FALSE, col.names = TRUE, 
				qmethod = c("escape", "double"), fileEncoding = "")
							
## Set back to the old working directory in case we want re-run the script later
setwd(wrkDir)






