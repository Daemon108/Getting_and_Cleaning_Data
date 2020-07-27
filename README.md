---
title: "ReadMe"
author: "Varavin"
date: "27 07 2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introduction

This repo was made to for the assignment on **"Getting and Cleaning Data Course Project"**. The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

# project_init.R

This R script needed just to download and unzip data for the project

# run_analysis.R

This R script does the following:

* Reads *"feature.txt"* file to have a list of all variables names  

* Reads *"activity_labels.txt" file to have labels for every activity  

* Reads the training and the test sets.  

        + Reading of datasets is made as a function just to avoid of getting 2 similar chunks of code.  
        + This function reads 3 files of dataset.  
        + Merges 3 files to 1 dataset.
        + Sets descriptive names to variables.
        + Sets descriptive names to activities.
        + Extracts only the measurements on the mean (mean()) and standard deviation (std()) for each measurement.
* Merges the training and the test sets to create one data set.
* Groups previous data set by subject and activity and calculates mean value for every variable.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes it to a file *tidy_dataset.txt*.

# tidy_dataset.txt

File made by run_analysis.R script. It contains tidy data set with the average of each variable for each activity and each subject.
  
# CodeBook.md  

Description of all fields in a "tidy_dataset.txt" file.  

# README.md

This file.
