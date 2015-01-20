README
======

Version 1.0.1 - Jan 19 2015


Introduction
------------

Script 'run_analysis.R' is used to download the Samsung data of 'getdata_projectfiles_UCI HAR Dataset.zip' to the local drive,
unzip it and process it to output a tidy data set file of 'tidyAveByActivityAndSubject.txt'. This txt file consists of 180
observations of 81 variables. The first and the second variables are named as 'activity' and 'subject', respectively. The rest 79
are 'mean' or 'standard deviation' features extracted from the original 561 features in the Samsung data, and they are averaged
values for each activity and each subject. A detailed description on all these 81 variables is available in 'CodeBook.md'.


Basic Sections
--------------

Script 'run_analysis.R' consists of three basic sections:

* **Section I**
	* Download and unzip 'getdata_projectfiles_UCI HAR Dataset.zip' to the working directory if it does not exist.

* **Section II**
	* Load all data into R. Extract all feature names which contain 'mean' or 'std'. Generate 'training' and 'test' data frames.

* **Section III**
	* Implement Task 1 to 5:
		* Merges the training and the test sets to create one data set.
		* Extracts only the measurements on the mean and standard deviation for each measurement.
		* Uses descriptive activity names to name the activities in the data set.
		* Appropriately labels the data set with descriptive variable names.
		* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
				   
For further details on the functionality of each of the above sections, please refer to the comments in 'run_analysis.R'. 


Running Instructions
--------------------

1.  Set a working directory and store 'run_analysis.R' under it.

2.  Source 'run_analysis.R' to the R Console and the output 'tidyAveByActivityAndSubject.txt' will be under './UCI HAR Dataset'.


Others
------

The best way to have a look at the output is to open it with OpenOffice Calc or Excel and check 'Separated by Space' although it is a txt file.