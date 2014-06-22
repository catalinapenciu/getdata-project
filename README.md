The following steps summarize the commands applied to the given data collections, in order to produce the final data set:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Step1:Reading the txt files into variables and creating the corresponding data frames(df1-training data set, df2- test data set)
-df1 is initialized as a data frame (will store the training data frame)
-read all the data from the .txt files
	$numeric data is stored in vectors, using the scan function
	$all other data is +read using the readLines function
			   +transformed into numeric data using the as.numeric function
			   +all NAs omitted using the na.omit function
-after reading each type of data (i.e. body_acc_x_train, etc), their correspondent vector is binded to the training data frame (using cbind)
-all of the above are repeted for the test data set (df2 stores the required info)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~			   
Step2: At this point, we have 2 different data sets, with corresponding columns for each of the txt files in the data collection, that have corresponding names (_train and _test, respectively).

Step3: Merging the two data frames into a single data set requires the following operations:
	$rename columns with more generic names (i.e. from "body_acc_x_train" to "body_acc_x")
	$merge the two data sets using the rbind function (the final data set is "data")
	$order the "data" data set based on the subject column
	$in order to use descriptive activity names to name the activities in the data set, a new column "activity_name" is inserted (matches each activity code with its corresponding activity name)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Step4:Extracting only the measurements on the mean and standard deviation for each measurement
	$two vectors are initialized - "mean" and "stdev"
	$a subset of the "data" data set is extracted, that contains only numeric values (removes the activity_name column)
	$their values are populated by using the colMeans and apply( , , sd) functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Step5:Creating a second, independent tidy data set with the average of each variable for each activity and each subject
	$orders the data set based on subject and activity
	$initializes empty frame "data_sec" with the same structure as the "data" data set
	$intializes the mean vector "d"
	$for every subject, there will be a "test" subset of data corresponding to that subject that will be further subset-ed for each activity ("test_a")
	$colMeans will compute the column means and store it in "d"
	$rbind will populate the empty data frame with a second, independent, data set containing the average of each variable for each activity and each subject


