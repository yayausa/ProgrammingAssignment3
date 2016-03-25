# ProgrammingAssignment3
Coursera project for class 3 "Getting and cleaning data" 

## Parts of the assignment
This programming assignment consist of 4 different parts.
All of them can be found in this github repository. [https://github.com/yayausa/ProgrammingAssignment3] (https://github.com/yayausa/ProgrammingAssignment3)

The parts of the assignment are:
* README.md -> describing the project and providing necessary information
* Code Book.md -> describing all variables of the data output
* run_analysis.R -> contains the script that tidies the data
* tidy-mean-output.txt -> containing the tidied data output of the script

## How to run the script
To run the script please make sure that the [UCI Har Dataset] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was unziped to your working directory. All data should be in a folder called "UCI HAR Datase".
If this is not the case, you will have to change all file references inside the script to the appropriate folder.
The output file will be created in this folder as well. It will be named "tidy-mean-output.txt"

## How to read outcome data into R?
To read the data into R please you can use the following code. The data will then be read into the "check_data" variable.
The View command will then provide a spreadsheet like version of the data table.
If you use a diffrenent folder than the UCI HAR Dataset, please change the file path accordingly.

```R
check_data <- read.table("UCI HAR Dataset/tidy-mean-output.txt", header = TRUE)
View(check_data)
```

## What the script does?
The script combines and tydies the original data provided in the UCI HAR Dataset according to the definition of Hadley Wickham's Tidy Data paper and the R-Styleguide.
[Tidy Data Article] (https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf)
[R-Styleguide](https://github.com/ClaytonJY/R-Styleguide)



## Why is this data tidy?
* Output has descriptive colums to clearly state the content of each column
* Variables are in different columns
* The data has no duplicate columns


## Description on how the script works
1. The script merges the training and the test sets to create one data set.
2. It extracts only the measurements on the mean and standard deviation for each measurement.
3. The script then uses descriptive activity names to name the activities in the data set
4. It appropriately labels the data set with descriptive variable names. The variable names have been chosen in accordance to the R-Styleguide and Hardley Wickhams paper. For links to those sources, please see above.
5. From the data set in step 4, a second, independent tidy data set is created with the average of each variable for each activity and each subject. The dataset is exported to the tidy-mean-output.txt file.

For further information please see the comments in the script.
