#Download zip file and unzip
temp = tempfile()
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="temp", method="curl")  #human activity recognition
unzip("temp")
unlink(temp)
#n=30obs total

#Training data - train/X_train.txt
#Training labels - train/y_train.txt
train = read.table("UCI HAR Dataset/train/X_train.txt")    #7352x561
nfeat = readLines("UCI HAR Dataset/features.txt") 
nfeat = gsub("[0-9]*\\s","", nfeat)
names(train) = nfeat
subject = as.numeric(readLines("UCI HAR Dataset/train/subject_train.txt"))
activity = readLines("UCI HAR Dataset/train/y_train.txt")  #n=7352
train = cbind(subject, activity, train)   

#Test data - test/X_test.txt
#Test labels - test/y_test.text
test = read.table("UCI HAR Dataset/test/X_test.txt")       #2947x561
names(test) = nfeat
subject = as.numeric(readLines("UCI HAR Dataset/test/subject_test.txt"))
activity = readLines("UCI HAR Dataset/test/y_test.txt")
test = cbind(subject, activity, test)

#Merge data sets to create one data set using rbind()
alldat = rbind(train, test)                               #10299x563
alldat$activity = factor(alldat$activity)
namelevs = read.table("UCI HAR Dataset/activity_labels.txt")
levels(alldat$activity) = namelevs[,2]

#Extract mean and sd for each measurement - only keep columns in 4:563 that contain text "mean" or "std"
keepcols = grep("mean|std",names(alldat))
alldat_ms = alldat[,c(1:2, keepcols)]                     #10299x81

#Create a second tidy dataset with the average of each variable for each activity and each subject
#Format of data set:  cols are subject (n=30), activity (n=6), variable (n=79), mean
alldatMelt = melt(alldat_ms, id=c("subject", "activity")) #rest are measure vars
summary_data = ddply(alldatMelt, .(subject, activity, variable), summarize, mean=mean(value))  #14220x4 = (30*6*79)x4

#Export data 
write.csv(names(alldat_ms), "measvars.csv")
write.table(summary_data, "summary_data.txt", row.name=FALSE)