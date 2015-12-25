run_analysis <- function(){
        #download data file & unzip
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL,"./data.zip", method="curl")
        unzip("./data.zip")
        
        #read in data
        x_test <- read.table("./UCI HAR Dataset/test/x_test.txt", header = FALSE, sep = "")
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
        x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
        a_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
        a_features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")
        
        #combine test and train data sets by row
        x_data <- rbind(x_train, x_test)
        y_data <- rbind(y_train, y_test)
        subj_data <- rbind(subject_train, subject_test)
        
        #rename variables for activity and subject data
        colnames(subj_data) <- "testSubjectID"
        colnames(y_data) <- "activity"
        
        #combine all data with subject data by column
        all.data <- cbind(x_data,y_data,subj_data)
        
        #rename columns in data set with "features" data set information
        colnames(all.data) <- a_features$V2
        
        #transform variable name to lower case characters and filter our mean and std values
        meanstd <- c(grep("mean\\(\\)", names(all.data)),grep("std\\(\\)", names(all.data)))
        
        #combine selected data into new short.data data set
        short.data <- cbind(subj_data, y_data, all.data[,meanstd])
                
        #replace activity factor levels with descriptive activity names
        short.data$activity <- cut(short.data$activity,6, labels = a_labels$V2)
        short.data$activity <- sub("_"," ", short.data$activity)
        
        #rename variable names with descriptive labels
        colnames(short.data) <- sub("Acc","Acceleration", colnames(short.data))
        colnames(short.data) <- sub("Gyro","AngularVelocity", colnames(short.data))
        colnames(short.data) <- sub("BodyBody","Body", colnames(short.data))
        colnames(short.data) <- sub("Mag","Magnitude", colnames(short.data))
        colnames(short.data) <- sub("-mean()","Mean", colnames(short.data))
        colnames(short.data) <- sub("-std","StdDeviation", colnames(short.data))
        colnames(short.data) <- sub("\\(\\)","", colnames(short.data))
        colnames(short.data) <- sub("-","", colnames(short.data))
        
        #tidy up data and write to file
        tidy.data <- aggregate(. ~ testSubjectID + activity,short.data, mean)
        write.table(tidy.data,"./tidy_data.txt",row.name=FALSE)
}
        
        