##pieces together entire data, making ID first then activity second followed by data.

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
Sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
Sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

XYTrain <- cbind(Y_train,X_train)
mergedTrain <- cbind(Sub_train,XYTrain)

XYTest <- cbind(Y_test, X_test)
mergedTest <- cbind(Sub_test, XYTest)

## 1 WALKING
## 2 WALKING_UPSTAIRS
## 3 WALKING_DOWNSTAIRS
## 4 SITTING
## 5 STANDING
## 6 LAYING


testtrain <- rbind(mergedTest,mergedTrain)
colnames(testtrain) <- c("ID","Activity")


## only show rows with mean and std deviation
subset <- testtrain[,c(1:8,43:48,83:88,123:128,163:168,203:204,206:207,216:217,229:230,242:243,255:256,268:273,296:298,347:352,426:431,454:456,505:506,518:519,531:532,544:545,558:563)]

print(head(subset))