#Read in necessary libaries
library(dplyr)

#Read in all the data sets
subjectidTest <- read.table("data/test/subject_test.txt")
measuresTest <- read.table("data/test/X_test.txt")
activityTest <- read.table("data/test/y_test.txt")
subjectidTrain <- read.table("data/train/subject_train.txt")
measuresTrain <- read.table("data/train/X_train.txt")
activityTrain <- read.table("data/train/y_train.txt")
features <- read.table("data/features.txt")
activityLabels <- read.table("data/activity_labels.txt")

#Find the features that report the mean or std of a measurement

columnsofInterest <- grepl("mean|std", features[,2])

#Reduce the measures data frames to just those columns and assign
#variable names
newmeasuresTest <- measuresTest[,columnsofInterest]
newmeasuresTrain <- measuresTrain[,columnsofInterest]

#Assign variable names to the measures data frames
names(newmeasuresTest) <- features[columnsofInterest,2]
names(newmeasuresTrain) <- features[columnsofInterest,2]

#Change activity numbers to activity names

#Create the full Test and Train data frames
fullTest <- cbind(activityTest,newmeasuresTest)
fullTest2 <- rename(fullTest, activity = V1 )
fullTest3 <- cbind(subjectidTest,fullTest2)
fullTestFinal <- rename(fullTest3, subjectid=V1)

fullTrain <- cbind(activityTrain,newmeasuresTrain)
fullTrain2 <- rename(fullTrain, activity = V1 )
fullTrain3 <- cbind(subjectidTrain,fullTrain2)
fullTraintFinal <- rename(fullTrain3, subjectid=V1)


#Combine the two data frames into 1

completeData <- rbind(fullTestFinal,fullTraintFinal)

#Replace activity numbers with activity labels

completeData$activity <- factor(completeData$activity,1:6, activityLabels[,2])

#Create second tidy data set

data.melt <- melt(completeData, id=c("subjectid","activity"))
averageData <- dcast(data.melt, subjectid+activity ~ variable, mean)

write.table(averageData, file="tidyData.txt", row.name=FALSE)
