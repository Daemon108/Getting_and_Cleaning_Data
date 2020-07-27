library(data.table)
library(dplyr)

read_dataset <-
        function(setname,
                 datadir,
                 col_names,
                 activity_labels) {
                # Function reads 3 files from dataset subfolder:
                #       subject_<dataset_name>.txt - subject who performed
                #                                    activity for each sample
                #       y_<dataset_name>.txt - activity labels for each sample
                #       X_<dataset_name>.txt - dataset of 561-feature vectors
                #                                    with time and frequency
                #                                    domain variables
                # After reading functions:
                #     - merges 3 datasets to 1
                #     - sets names to variables
                #     - sets names to activity labels
                #     - extracts only required variables
                #
                fread_file <-
                        function(datadir, setname, fileprefix) {
                                fread(file.path(
                                        datadir,
                                        setname,
                                        paste0(fileprefix, setname, ".txt")
                                ))
                        }
                subject <- fread_file(datadir, setname, "subject_")
                X <- fread_file(datadir, setname, "X_")
                y <- fread_file(datadir, setname, "y_")
                dataset <- cbind(subject, y, X)
                names(dataset) <-
                        c("subject", "activity", col_names)
                dataset$activity <-
                        factor(dataset$activity, labels = activity_labels)
                dataset[, grepl("(subject|activity|mean\\(|std\\()",
                                names(dataset)), with = FALSE]
        }

dataDir <- "UCI HAR Dataset"
featuresFile <- "features.txt"
features <- fread(file.path(dataDir, featuresFile))
activity_labelsFile <- "activity_labels.txt"
activity_labels <- fread(file.path(dataDir, activity_labelsFile))
train_dataset <-
        read_dataset("train", datadir = dataDir, features$V2,
                     activity_labels$V2)
test_dataset <- read_dataset("test", datadir = dataDir, features$V2,
                             activity_labels$V2)
tidy_dataset1 <- rbindlist(list(train_dataset, test_dataset))

calculated_mean <-
        tidy_dataset1[, lapply(.SD, mean, na.rm = TRUE), by = .(subject, activity)]

tidy_dataset2 <-
        melt.data.table(calculated_mean,
                        id = c("subject", "activity"),
                        value.name = "average")
write.table(tidy_dataset2, file = "tidy_dataset.txt", row.names = FALSE)
