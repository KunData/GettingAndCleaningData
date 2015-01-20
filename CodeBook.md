CODE BOOK
=========

Version 1.0.1 - Jan 19 2015


Introduction
------------

'tidyAveByActivityAndSubject.txt' is produced with script 'run_analysis.R' from data 
'getdata_projectfiles_UCI HAR Dataset.zip' provided by UCI Machine Learning Repository. 
A full description on the zipped data sets is available at the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

especially, in the 'README.txt' included in the zipped file. 

Briefly speaking, the original data sets were collected from 30 volunteers who performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
by using an accelerometer and a gyroscope embedded in a Samsung Galaxy S II. With a series 
of processing, the 3-axial raw sensor signals from the time and frequency domain were 
converted to 10299 vectors with each of them having 561 features and corresponding to a row 
either in the 'X_train.txt' or in the 'X_test.txt' extracted from the zipped file. Meanwhile, 
each activity performed by each volunteers was recorded in the 'y_train.txt' or 'y_test.txt', 
and each volunteer was identified by a unique number from 1 to 30 and stored in the 
'subject_train.txt' or 'subject_test.txt'. The train and test data sets were randomly picked 
from the 10299 instances by volunteers' ids and the proportion between them is 70% vs 30%. 

With script 'run_analysis.R', 'activity' and 'subject' labels, as well as all features whose 
names contain 'mean' or 'std' are extracted from the original data sets. Further, features 
are averaged for each activity and each subject to form an independent tidy data set with 
180 observations of 81 variables. Finally, this tidy data sets was written to 
'tidyAveByActivityAndSubject.txt' of which a complete list of all variables is as follows.


Variable Description
--------------------

1.  activity: a record of six possible activities performed by volunteers
	* LAYING
	* SITTING
	* STANDING
	* WALKING
	* WALKING_DOWNSTAIRS
	* WALKING_UPSTAIRS
2.  subject: a record of volunteers who performed activities. Each was identified by a unique number from 1 to 30 
3.  tBodyAcc-mean()-X
4.  tBodyAcc-mean()-Y
5.  tBodyAcc-mean()-Z
6.  tBodyAcc-std()-X
7.  tBodyAcc-std()-Y
8.  tBodyAcc-std()-Z
9.  tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAcc-meanFreq()-X
50. fBodyAcc-meanFreq()-Y
51. fBodyAcc-meanFreq()-Z
52. fBodyAccJerk-mean()-X
53. fBodyAccJerk-mean()-Y
54. fBodyAccJerk-mean()-Z
55. fBodyAccJerk-std()-X
56. fBodyAccJerk-std()-Y
57. fBodyAccJerk-std()-Z
58. fBodyAccJerk-meanFreq()-X
59. fBodyAccJerk-meanFreq()-Y
60. fBodyAccJerk-meanFreq()-Z
61. fBodyGyro-mean()-X
62. fBodyGyro-mean()-Y
63. fBodyGyro-mean()-Z
64. fBodyGyro-std()-X
65. fBodyGyro-std()-Y
66. fBodyGyro-std()-Z
67. fBodyGyro-meanFreq()-X
68. fBodyGyro-meanFreq()-Y
69. fBodyGyro-meanFreq()-Z
70. fBodyAccMag-mean()
71. fBodyAccMag-std()
72. fBodyAccMag-meanFreq()
73. fBodyBodyAccJerkMag-mean()
74. fBodyBodyAccJerkMag-std()
75. fBodyBodyAccJerkMag-meanFreq()
76. fBodyBodyGyroMag-mean()
77. fBodyBodyGyroMag-std()
78. fBodyBodyGyroMag-meanFreq()
79. fBodyBodyGyroJerkMag-mean()
80. fBodyBodyGyroJerkMag-std()
81. fBodyBodyGyroJerkMag-meanFreq()


Note
----

Values under variable 3 to variable 81 are averaged for each activity and each subject.
For more details about where the original values of these variables come from, please check
'features_info.txt' and 'features.txt' extracted from the original zipped file.