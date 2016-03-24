# R code for tyding data set for Coursera Data Scinence Specialization Class 3 "Getting and Cleaning Data" course project.

# loading test data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


# loading training data
x_training <- read.table("UCI HAR Dataset/train/X_train.txt")
y_training <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_training <- read.table("UCI HAR Dataset/train/subject_train.txt")


# loading activities and features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")


# 1.Merges the training and the test sets to create one data set.
# combining test and training data

x_total <- rbind(x_test, x_training)
y_total <- rbind(y_test, y_training)
subject_total <- rbind(subject_test, subject_training)

# adding names to columns
names(x_total) <- features$V2
names(y_total) <- "activity"
names(subject_total) <- "subject_id"

# freeing up RAM (cleaning unncessary data & variables)
rm(x_test, x_training, y_test, y_training, subject_test, subject_training)



# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
# extracting mean and std variable data
x_mean_std <- x_total[, grep(("mean|std"), features[, 2])]

# combining all data into one large dataset
total_data <- cbind(subject_total, y_total, x_mean_std)

# freeing up RAM (cleaning unncessary data & variables)
rm(x_total, x_mean_std, y_total, subject_total, features)



# 3.Uses descriptive activity names to name the activities in the data set
# tyding activity names

activity_labels$V2 <- tolower(activity_labels$V2)
activity_labels$V2 <- sub("_"," ", activity_labels$V2)

# looping through to switch activity number to avtivity label
for(i in 1:nrow(activity_labels)){
  total_data$activity[total_data$activity == activity_labels[i,1]] <- activity_labels[i,2]
}



# 4.Appropriately labels the data set with descriptive variable names.
# tyding variable names according to R-Styleguide best practices
# substituting abbrevations for their

names(total_data) <- sub("^t", "time_", names(total_data))
names(total_data) <- sub("^f", "frequency_", names(total_data))
names(total_data) <- sub("BodyBody", "body_", names(total_data))
names(total_data) <- sub("Body", "body_", names(total_data))
names(total_data) <- sub("mean\\(\\)", "mean", names(total_data))
names(total_data) <- sub("std\\(\\)", "standard_deviation", names(total_data))
names(total_data) <- sub("Acc", "acceleration_", names(total_data))
names(total_data) <- sub("Gyro", "gyroscope_", names(total_data))
names(total_data) <- sub("Gravity", "gravity_", names(total_data))
names(total_data) <- sub("Jerk", "_jerk_", names(total_data))
names(total_data) <- sub("Mag", "magnitude", names(total_data))
names(total_data) <- sub("__", "_", names(total_data))
names(total_data) <- sub("_-", "-", names(total_data))
names(total_data) <- tolower(names(total_data))
names(total_data) <- sub("meanfreq\\(\\)", "mean-frequency", names(total_data))



#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
tidy_mean_output <- total_data %>% 
                      group_by(subject_id, activity) %>% 
                      summarise_each(funs(mean), -subject_id, -activity)


write.table(tidy_mean_output, "UCI HAR Dataset/tidy-mean-output.txt", sep="\t", col.names = TRUE, row.names = FALSE)



# load output file to check its readibility
#check_data <- read.table("UCI HAR Dataset/tidy-mean-output.txt", header = TRUE)


