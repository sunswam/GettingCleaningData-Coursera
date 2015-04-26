##Data source:
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Overview:
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements. 21 Volunteers data is present in Train dataset and the remaining 9 volunteers dataset is present in test dataset

##Explanation of each file provided in the Dataset :

-> features.txt: Names of the 561 features.
-> activity_labels.txt: Names and IDs for each of the 6 activities.
-> X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.
-> subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
-> y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.
-> X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
-> subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
-> y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

##Merge training and test sets:
Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt, subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set. Variables are labelled with the names assigned by original collectors (features.txt).

##Extract mean and standard deviation variables:
From the merged data set is extracted and intermediate data set with only the values of estimated mean (variables with labels that contain "mean") and standard deviation (variables with labels that contain "std").

##Data transformation:
The raw data sets are processed with run_analisys.R script to create a tidy data set.

##Processing steps:
	1	All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.
	2	All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, plus the subjectID and activity columns.
	3	The activity column was converted from a integer to a factor, using labels describing the activities.
	4	A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 68 columns with 66 features for that subject/activity combination while remaining two are subject activity and subject ID. Since there are 30 subjects, there are a total of 180 rows.
	5	The tidy data set was output to a  tab delimited text file.