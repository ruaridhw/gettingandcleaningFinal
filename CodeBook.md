Code Book for Getting and Cleaning Data Assignment
===========

The following file contains a brief description of the original dataset used as well as descriptions of the Tidy dataset output by the run_analysis.R script.


Original Dataset
===========

A description of the original dataset extracted from the README.txt file is as follows:

### Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Context

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Notes
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset see the README.txt file or contact activityrecognition@smartlab.ws

### License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Transformation of Original Dataset
===========

The original dataset was cleaned according to the following process

- The x and y training and test sets were merged to create one data set.
- Only the columns on the mean and std of each measurement were extracted
- The activity id variable was replaced with descriptive activity names
- Each of the variables was replaced with a cleaner name
- A tidy dataset was then output (see below)

Tidy Dataset
===========

The tidy dataset is the result of the aggregation of the cleaned original dataset.

Each row corresponds to a unique subject, activity observation
Each column corresponds to the mean of the values of that variable for that given subject, activity combination

The variables in the tidy dataset are as follows: 

- subject.id : Each id identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- activity.description : A short description of the activity that each subject was performing

- (remaining variables) : Each column corresponds to the mean of the corresponding column in the original dataset
