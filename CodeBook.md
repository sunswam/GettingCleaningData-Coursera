{\rtf1\ansi\ansicpg1252\cocoartf1347\cocoasubrtf570
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red52\green110\blue183;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww28600\viewh15680\viewkind0
\deftab720
\pard\pardeftab720

\f0\b\fs56 \cf2 \expnd0\expndtw0\kerning0
Data source\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: {\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf3 \expnd0\expndtw0\kerning0
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}\cf3 \expnd0\expndtw0\kerning0
\
\
\pard\pardeftab720

\b\fs48 \cf2 \expnd0\expndtw0\kerning0
Overview\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements. 21 Volunteers data is present in Train dataset and the remaining 9 volunteers dataset is present in test dataset\
\pard\pardeftab720

\b\fs48 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
Explanation of each file provided in the Dataset\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
\
-> features.txt: Names of the 561 features.\
-> activity_labels.txt: Names and IDs for each of the 6 activities.\
-> X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.\
-> subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.\
-> y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.\
-> X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.\
-> subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.\
-> y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.\
\pard\pardeftab720

\b\fs48 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
Merge training and test sets\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt, subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set. Variables are labelled with the names assigned by original collectors (features.txt).\
\pard\pardeftab720

\b\fs48 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
Extract mean and standard deviation variables\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
From the merged data set is extracted and intermediate data set with only the values of estimated mean (variables with labels that contain "mean") and standard deviation (variables with labels that contain "std").\
\
\pard\pardeftab720

\b\fs56 \cf2 \expnd0\expndtw0\kerning0
Data transformation\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
The raw data sets are processed with run_analisys.R script to create a tidy data set.
\b\fs48 \expnd0\expndtw0\kerning0
\
\
Processing steps\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0
\b0\fs32 \cf2 \kerning1\expnd0\expndtw0 {\listtext	1	}\expnd0\expndtw0\kerning0
All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	2	}\expnd0\expndtw0\kerning0
All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, plus the subjectID and activity columns.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	3	}\expnd0\expndtw0\kerning0
The activity column was converted from a integer to a factor, using labels describing the activities.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	4	}\expnd0\expndtw0\kerning0
A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 68 columns with 66 features for that subject/activity combination while remaining two are subject activity and subject ID. Since there are 30 subjects, there are a total of 180 rows.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
The tidy data set was output to a  tab delimited text file.}