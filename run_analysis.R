library(utils)
library(tidyverse)

#===============================================================================
# Create a data directory if one doesn't exist

if(!file.exists("./data")) {dir.create("./data")}


#===============================================================================
# Download data set

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL, destfile = "./data/uci_har.zip", method = 'curl')


#===============================================================================
# Unzip the files into the data directory

unzip("./data/uci_har.zip", exdir = "./data", unzip = "unzip")


#===============================================================================
# Import data using readr::read_table():

x_test <- read_table("./data/UCI HAR Dataset/test/X_test.txt", col_names = FALSE)
y_test <- read_table("./data/UCI HAR Dataset/test/y_test.txt", col_names = FALSE)
subject_test <- read_table("./data/UCI HAR Dataset/test/subject_test.txt", col_names = FALSE)

x_train <- read_table("./data/UCI HAR Dataset/train/X_train.txt", col_names = FALSE)
y_train <- read_table("./data/UCI HAR Dataset/train/y_train.txt", col_names = FALSE)
subject_train <- read_table("./data/UCI HAR Dataset/train/subject_train.txt", col_names = FALSE)

activity_labels <- read_table("./data/UCI HAR Dataset/activity_labels.txt", col_names = FALSE)
features <- read_table("./data/UCI HAR Dataset/features.txt", col_names = FALSE)

# N.B. Data are separated by white spaces and have no column headers


#===============================================================================
# Add variable names:

colnames(activity_labels) <- c("activity_code", "activity")

colnames(subject_test) <- "subject"
colnames(subject_train) <- "subject"

colnames(y_test) <- "activity_code"
colnames(y_train) <- "activity_code"

colnames(x_test) <- as.character(features$X2)
colnames(x_train) <- as.character(features$X2)


#===============================================================================
# Merge data:

# Append the respective subject and activity columns to x_test and x_train
test_data <- bind_cols(subject_test, y_test, x_test)
train_data <- bind_cols(subject_train, y_train, x_train)

# Merge the resulting test and training data frames
merged_data <- bind_rows(test_data, train_data)


#===============================================================================
# Extract the mean, -mean(), and standard deviation, -std(), variables:

means_stds <- merged_data %>%
              select(1:2, contains("-mean()"), contains("-std()"))

# N.B. Variables that contain the word mean but are not means of a measurement are ignored.
# e.g. fBodyAccMag-meanFreq() and angle(X,gravityMean) are not selected.  


#===============================================================================
# Add descriptive activity names:

# Apply mutating join with activity_labels data frame using activity_code as key
means_stds <- means_stds %>%
              left_join(activity_labels, by = "activity_code")

# Move new activity column beside other grouping variables
means_stds <- means_stds %>% 
              relocate(activity, .after = activity_code)

# Drop activity_code column
means_stds <- means_stds %>%
              select(!activity_code)


#===============================================================================
# Summarize data as the average of each variable grouped by activity and subject

processed_data <- means_stds %>%
                  group_by(activity, subject) %>%
                  summarise(across(everything(), mean, .names = "avg_{.col}"))


#===============================================================================
# Save summary data frame as output

#write_csv(processed_data, "./processed_data.csv")
write.table(processed_data, file = "./processed_data.txt", row.names = FALSE)

