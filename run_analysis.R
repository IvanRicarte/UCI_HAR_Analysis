#' R script to perform analysis on UCI HAR dataset 
#' 
#' The input is a zipped set of files with data collected from accelerometers from the
#' Samsung Galaxy S smartphone. A full description is available at the site where
#' the data was obtained: 
#' http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#' The codebook for the resulting dataset can be obtained from the same repository 
#' that contains this script
#' @param zipdatafile path to the compressed (zip) file with the full dataset
#' @author Ivan L M Ricarte <ricarte@unicamp.br>
#' @return Tidy data frame, wide format
#' 
run_analysis <- function(zipdatafile = "Dataset.zip") {
    files <- unzip(zipdatafile)
    
    # Names of files that are used to perform this analysis
    trainingDataFile <- grep("/X_train\\.txt", files, value=TRUE)
    testDataFile <- grep("/X_test\\.txt", files, value=TRUE)
    trainingSubjectFile <- grep("/subject_train\\.txt", files, value=TRUE)
    testSubjectFile <- grep("/subject_test\\.txt", files, value=TRUE)
    trainingActivityFile <- grep("/y_train\\.txt", files, value=TRUE)
    testActivityFile <- grep("/y_test\\.txt", files, value=TRUE)
    activityLabelsFile <- grep("activity_labels\\.txt", files, value=TRUE)
    featuresDescriptionFile <- grep("features\\.txt", files, value=TRUE)
    
    # Merges the training and the test sets to create one data set.
    trainingData <- read.table(trainingDataFile,colClasses="numeric")
    testData <- read.table(testDataFile,colClasses="numeric")
    fullDataSet <- rbind(trainingData, testData)
    
    # Extracts only the measurements on the mean and standard deviation for each measurement. 
    featuresTable <- read.table(featuresDescriptionFile)
    names(featuresTable) <- c("featurecolumn","featurename")
    features <- grep("mean|std",featuresTable$featurename)
    dataSet <- fullDataSet[,features]
    
    # Get descriptive names for activities in the data set
    activities <- read.table(activityLabelsFile)
    names(activities) <- c("activitycode","activity")
    
    # Appropriately labels the data set with descriptive variable names. 
    featureNames <- tolower(gsub("[()]","",featuresTable[features,2]))
    names(dataSet) <- featureNames
        
    # Include activity information
    activityCodes <- rbind(read.table(trainingActivityFile),read.table(testActivityFile))[,1]
    activity <- activities[activityCodes,2]
    actDataSet <- cbind(activity,dataSet)
    
    # Include subject information
    subject <- rbind(read.table(trainingSubjectFile), read.table(testSubjectFile))[,1]
    subjActData <- cbind(subject,actDataSet)
    
    # Creates an independent tidy data set with the average of each variable for each activity and each subject.
    aggregate(. ~ subject + activity, data=subjActData, FUN=mean)
}