# Getting and Cleaning Data Course Project

This repository contains 3 files in addition to this README:

-   *run_analysis.R* is an R script that performs the entire analysis

-   *processed_data.txt* is a tidy data set produced by run_analysis.R

-   *CodeBook.md* describes the contents of processed_data.txt

## What *run_analysis.R* does:

1.  Creates a data directory if one does not exist
2.  Downloads and unzips UCI HAR Data set into the data directory
3.  Imports the data into R
4.  Adds variable names
5.  Merges the test and training data sets
6.  Extracts the *mean* and *standard deviation* variables
7.  Adds descriptive activity names
8.  Averages the measured variables for each combination of activity and subject
9.  Saves the resulting tidy data frame to the working directory as a .txt file
