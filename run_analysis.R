
#reading the training dataset
df1<-data.frame()
subject_train<-scan("./train/subject_train.txt", what=numeric())

######################
txt<-file(".\\train\\Inertial Signals\\body_acc_x_train.txt")
body_acc_x_train<-strsplit(readLines(txt), " +")
close(txt)
body_acc_x_train<-c(do.call("cbind",body_acc_x_train)) 
body_acc_x_train<-as.numeric(body_acc_x_train)
body_acc_x_train<-na.omit(body_acc_x_train)

df1<-cbind(subject_train, body_acc_x_train)
####################################
txt<-file(".\\train\\Inertial Signals\\body_acc_y_train.txt")
body_acc_y_train<-strsplit(readLines(txt), " +")
close(txt)

body_acc_y_train<-c(do.call("cbind",body_acc_y_train)) 
body_acc_y_train<-as.numeric(body_acc_y_train)
body_acc_y_train<-na.omit(body_acc_y_train)

df1<-cbind(df1, body_acc_y_train)

##################################

txt<-file(".\\train\\Inertial Signals\\body_acc_z_train.txt")
body_acc_z_train<-strsplit(readLines(txt), " +")
close(txt)

body_acc_z_train<-c(do.call("cbind",body_acc_z_train)) 
body_acc_z_train<-as.numeric(body_acc_z_train)
body_acc_z_train<-na.omit(body_acc_z_train)

df1<-cbind(df1, body_acc_z_train)

######################################

txt<-file(".\\train\\Inertial Signals\\body_gyro_x_train.txt")
body_gyro_x_train<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_x_train<-c(do.call("cbind",body_gyro_x_train)) 
body_gyro_x_train<-as.numeric(body_gyro_x_train)
body_gyro_x_train<-na.omit(body_gyro_x_train)

df1<-cbind(df1, body_gyro_x_train)

#####################################

txt<-file(".\\train\\Inertial Signals\\body_gyro_y_train.txt")
body_gyro_y_train<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_y_train<-c(do.call("cbind",body_gyro_y_train)) 
body_gyro_y_train<-as.numeric(body_gyro_y_train)
body_gyro_y_train<-na.omit(body_gyro_y_train)

df1<-cbind(df1, body_gyro_y_train)
##############################################

txt<-file(".\\train\\Inertial Signals\\body_gyro_z_train.txt")
body_gyro_z_train<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_z_train<-c(do.call("cbind",body_gyro_z_train)) 
body_gyro_z_train<-as.numeric(body_gyro_z_train)
body_gyro_z_train<-na.omit(body_gyro_z_train)

df1<-cbind(df1, body_gyro_z_train)

################################################

txt<-file(".\\train\\Inertial Signals\\total_acc_x_train.txt")
total_acc_x_train<-strsplit(readLines(txt), " +")
close(txt)

total_acc_x_train<-c(do.call("cbind",total_acc_x_train)) 
total_acc_x_train<-as.numeric(total_acc_x_train)
total_acc_x_train<-na.omit(total_acc_x_train)

df1<-cbind(df1, total_acc_x_train)
######################

txt<-file(".\\train\\Inertial Signals\\total_acc_y_train.txt")
total_acc_y_train<-strsplit(readLines(txt), " +")
close(txt)

total_acc_y_train<-c(do.call("cbind",total_acc_y_train)) 
total_acc_y_train<-as.numeric(total_acc_y_train)
total_acc_y_train<-na.omit(total_acc_y_train)

df1<-cbind(df1, total_acc_y_train)
###########################

txt<-file(".\\train\\Inertial Signals\\total_acc_z_train.txt")
total_acc_z_train<-strsplit(readLines(txt), " +")
close(txt)

total_acc_z_train<-c(do.call("cbind",total_acc_z_train)) 
total_acc_z_train<-as.numeric(total_acc_z_train)
total_acc_z_train<-na.omit(total_acc_z_train)

df1<-cbind(df1, total_acc_z_train)
##############################
y_train<-scan("./train/y_train.txt", what=numeric())
df1<-cbind(df1, y_train)


#reading the test dataset
df2<-data.frame()
subject_test<-scan("./test/subject_test.txt", what=numeric())

######################
txt<-file(".\\test\\Inertial Signals\\body_acc_x_test.txt")
body_acc_x_test<-strsplit(readLines(txt), " +")
close(txt)
body_acc_x_test<-c(do.call("cbind",body_acc_x_test)) 
body_acc_x_test<-as.numeric(body_acc_x_test)
body_acc_x_test<-na.omit(body_acc_x_test)

df2<-cbind(subject_test, body_acc_x_test)

####################################
txt<-file(".\\test\\Inertial Signals\\body_acc_y_test.txt")
body_acc_y_test<-strsplit(readLines(txt), " +")
close(txt)

body_acc_y_test<-c(do.call("cbind",body_acc_y_test)) 
body_acc_y_test<-as.numeric(body_acc_y_test)
body_acc_y_test<-na.omit(body_acc_y_test)

df2<-cbind(df2, body_acc_y_test)

##################################

txt<-file(".\\test\\Inertial Signals\\body_acc_z_test.txt")
body_acc_z_test<-strsplit(readLines(txt), " +")
close(txt)

body_acc_z_test<-c(do.call("cbind",body_acc_z_test)) 
body_acc_z_test<-as.numeric(body_acc_z_test)
body_acc_z_test<-na.omit(body_acc_z_test)

df2<-cbind(df2, body_acc_z_test)

######################################

txt<-file(".\\test\\Inertial Signals\\body_gyro_x_test.txt")
body_gyro_x_test<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_x_test<-c(do.call("cbind",body_gyro_x_test)) 
body_gyro_x_test<-as.numeric(body_gyro_x_test)
body_gyro_x_test<-na.omit(body_gyro_x_test)

df2<-cbind(df2, body_gyro_x_test)

#####################################

txt<-file(".\\test\\Inertial Signals\\body_gyro_y_test.txt")
body_gyro_y_test<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_y_test<-c(do.call("cbind",body_gyro_y_test)) 
body_gyro_y_test<-as.numeric(body_gyro_y_test)
body_gyro_y_test<-na.omit(body_gyro_y_test)

df2<-cbind(df2, body_gyro_y_test)
##############################################

txt<-file(".\\test\\Inertial Signals\\body_gyro_z_test.txt")
body_gyro_z_test<-strsplit(readLines(txt), " +")
close(txt)

body_gyro_z_test<-c(do.call("cbind",body_gyro_z_test)) 
body_gyro_z_test<-as.numeric(body_gyro_z_test)
body_gyro_z_test<-na.omit(body_gyro_z_test)

df2<-cbind(df2, body_gyro_z_test)

################################################

txt<-file(".\\test\\Inertial Signals\\total_acc_x_test.txt")
total_acc_x_test<-strsplit(readLines(txt), " +")
close(txt)

total_acc_x_test<-c(do.call("cbind",total_acc_x_test)) 
total_acc_x_test<-as.numeric(total_acc_x_test)
total_acc_x_test<-na.omit(total_acc_x_test)

df2<-cbind(df2, total_acc_x_test)
######################

txt<-file(".\\test\\Inertial Signals\\total_acc_y_test.txt")
total_acc_y_test<-strsplit(readLines(txt), " +")
close(txt)

total_acc_y_test<-c(do.call("cbind",total_acc_y_test)) 
total_acc_y_test<-as.numeric(total_acc_y_test)
total_acc_y_test<-na.omit(total_acc_y_test)

df2<-cbind(df2, total_acc_y_test)
###########################

txt<-file(".\\test\\Inertial Signals\\total_acc_z_test.txt")
total_acc_z_test<-strsplit(readLines(txt), " +")
close(txt)

total_acc_z_test<-c(do.call("cbind",total_acc_z_test)) 
total_acc_z_test<-as.numeric(total_acc_z_test)
total_acc_z_test<-na.omit(total_acc_z_test)

df2<-cbind(df2, total_acc_z_test)
##############################
y_test<-scan("./test/y_test.txt", what=numeric())
df2<-cbind(df2, y_test)


##merge the training and testing datasets into one - merged
colnames(df1)<-c("subject","body_acc_x","body_acc_y", "body_acc_z","body_gyro_x", "body_gyro_y", "body_gyro_z", "total_acc_x","total_acc_y","total_acc_z", "activity")
colnames(df2)<-c("subject","body_acc_x","body_acc_y", "body_acc_z","body_gyro_x", "body_gyro_y", "body_gyro_z", "total_acc_x","total_acc_y","total_acc_z", "activity")
data<-rbind(df1,df2)
data<-data[order(data$subject),]


##add activity names
data$activity_name[data$activity==1]<-"walking"
data$activity_name[data$activity==2]<-"walking upstairs"
data$activity_name[data$activity==3]<-"walking downstairs"
data$activity_name[data$activity==4]<-"sitting"
data$activity_name[data$activity==5]<-"laying"

##extracts only the measurements on the mean and standard deviation for each measurement
mean=vector(length(data[1,]))
data_num<-subset(data, select=-activity_name)
mean<-colMeans(data_num, na.rm=TRUE)

stdev=vector(length(data[1,]))
stdev<-apply(data_num, 2, sd)

##create a second, independent tidy data set with the average of each variable for each activity and each subject

data_num<-data_num[order(data_num$subject, data_num$activity),]
d<-vector()

data_sec<-data.frame()
colnames(data_sec)<-c("subject", "body_acc_x", "body_acc_y", "body_acc_z", "body_gyro_x", "body_gyro_y", "body_gyro_z", "total_acc_x", "total_acc_y", "total_acc_z", "activity")


for(i in 1:30)
{test<-data_num[data_num$subject==i,]
 for (j in 1:6)
    {
     test_a<-test[test$activity==j,]
     d<-colMeans(test_a)
     data_sec<-rbind(d, data_sec)}
}


