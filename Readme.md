##Introduction
This repository contains work done for the course project of Coursera course "Getting and Cleaning data". Below is the information provided about the data and steps to run this script.

##About the raw data
The features (561 of them) are unlabeled and can be found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt  & subject_train.txt file.


##About the script and the tidy dataset
 Prerequisites to run this script:
	1	the UCI HAR Dataset must be extracted and..
	2	the UCI HAR Dataset must be available in a directory called "UCI HAR Dataset"
	3	Place the script in the UCI HAR Dataset and open from R and execute the dataset
	4	The Test data and the training dataset is read into R
	5	Labels are added and the datasets are merged and final dataset is created
	6	Only columns that have to do with mean and standard deviation are kept.
	7	Lastly, the script will create a tidy data set containing the means of all the columns per test subject and per activity. 
	8	This tidy dataset will be written to a tab-delimited file called tidy.txt, which can also be found in this repository.

##About the Code Book
The CodeBook.md file explains the transformations performed and the resulting data and variables.