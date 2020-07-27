fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile1 <- "getdata_projectfiles_UCI_HAR_Dataset.zip"
download.file(fileUrl1, destfile = destfile1, method = "curl")
unzip(destfile1)
