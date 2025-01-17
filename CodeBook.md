---
title: "CodeBook"
author: "Varavin"
date: "27 07 2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## tidy_dataset.txt field description

* **subject** - the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* **activity** - activities performed by the subject. Possible values: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* **variable** - names of different variables. Possible values built on feature selection:  

        + The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

        + Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

        + Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

        + These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

                - tBodyAcc-XYZ
                - tGravityAcc-XYZ
                - tBodyAccJerk-XYZ
                - tBodyGyro-XYZ
                - tBodyGyroJerk-XYZ
                - tBodyAccMag
                - tGravityAccMag
                - tBodyAccJerkMag
                - tBodyGyroMag
                - tBodyGyroJerkMag
                - fBodyAcc-XYZ
                - fBodyAccJerk-XYZ
                - fBodyGyro-XYZ
                - fBodyAccMag
                - fBodyAccJerkMag
                - fBodyGyroMag
                - fBodyGyroJerkMag
    
        + The set of variables that were estimated from these signals are: 

                - mean(): Mean value
                - std(): Standard deviation
    
* **average** the average of each variable for each activity and each subject.

  