{\rtf1\ansi\ansicpg1252\cocoartf1347\cocoasubrtf570
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red52\green110\blue183;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww28600\viewh15680\viewkind0
\deftab720
\pard\pardeftab720

\f0\b\fs56 \cf2 \expnd0\expndtw0\kerning0
Introduction\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization. What follows first are my notes on the original data.\
\pard\pardeftab720

\b\fs56 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
About the raw data\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
The features (561 of them) are unlabeled and can be found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt  & subject_train.txt file.\
\
\pard\pardeftab720

\b\fs56 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
About the script and the tidy dataset\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
run_analysis.R will readwhich will merge the test and training sets together. Prerequisites for this script:\
\pard\tx220\tx720\pardeftab720\li720\fi-720
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	1	}\expnd0\expndtw0\kerning0
the UCI HAR Dataset must be extracted and..\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	2	}\expnd0\expndtw0\kerning0
the UCI HAR Dataset must be availble in a directory called "UCI HAR Dataset"\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	3	}Place the script in the UCI HAR Dataset and open from R and execute the dataset\
{\listtext	4	}The Test data and the training dataset is read into R\expnd0\expndtw0\kerning0
\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	5	}\expnd0\expndtw0\kerning0
Labels are added and the datasets are merged and final dataset is created\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	6	}\expnd0\expndtw0\kerning0
Only columns that have to do with mean and standard deviation are kept.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	7	}\expnd0\expndtw0\kerning0
Lastly, the script will create a tidy data set containing the means of all the columns per test subject and per activity. \
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	8	}\expnd0\expndtw0\kerning0
This tidy dataset will be written to a tab-delimited file called tidy.txt, which can also be found in this repository.\
\pard\pardeftab720

\b\fs56 \cf3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
About the Code Book\
\pard\pardeftab720

\b0\fs32 \cf2 \expnd0\expndtw0\kerning0
The CodeBook.md file explains the transformations performed and the resulting data and variables.}