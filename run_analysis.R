library(reshape2)

features <- read.table("features.txt", col.names = c("col.id", "col.name"))

subject.train <- read.table("./train/subject_train.txt", col.names = "subject.id", comment.char = "")
subject.test <- read.table("./test/subject_test.txt", col.names = "subject.id", comment.char = "")
subject.full <- rbind(subject.train, subject.test)

x.train <- read.table("./train/X_train.txt", col.names = features$col.name, comment.char = "")
x.test <- read.table("./test/X_test.txt", col.names = features$col.name, comment.char = "")
x.full <- rbind(x.train, x.test)
x.reqcols <- x.full[,grepl("(mean[^F]|std)", features$col.name)]
names(x.reqcols) <- gsub("..", "", names(x.reqcols), fixed = TRUE)

activitylabels <- read.table("activity_labels.txt", col.names = c("activities", "description"), comment.char = "")
y.train <- read.table("./train/y_train.txt", col.names = "activities", comment.char = "")
y.test <- read.table("./test/y_test.txt", col.names = "activities", comment.char = "")
y.full <- rbind(y.train, y.test)
activities.description <- merge(y.full, activitylabels, by="activities")[,2]

full <- cbind(subject.full,x.reqcols,activities.description)
full.melted <- melt(full, id.vars=c("subject.id","activities.description"))
full.summary <- dcast(full.melted, subject.id + activities.description ~ variable, fun.aggregate=mean, value.var="value")

write.table(full.summary, "tidy.txt", row.names = FALSE)
