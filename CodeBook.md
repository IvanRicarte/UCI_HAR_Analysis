# Codebook for UCI HAR accelerometers cleaned data

The output of the analysis script is a data frame with 180 observations, corresponding to data collected from Samsung Galaxy S smartphone accelerometers during 6 activities performed by 30 subjects. The original data is available and described in the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The *run_analysis()* function receives the name of the compressed (zip) file as argument and produces a data frame with the average value of each variable of interest, for each subject and activity. The 81 variables (columns) in this data frame are:

1. subject
  * Subject identifier, an integer from 1 to 30
  
2. activity
  * Label for activity performed by subject during the measurements. There are six possible values:
    * LAYING
    * SITTING
    * STANDING
    * WALKING
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS

3. tbodyacc-mean-x
4. tbodyacc-mean-y
5. tbodyacc-mean-z
6. tbodyacc-std-x
7. tbodyacc-std-y
8. tbodyacc-std-z
9. tgravityacc-mean-x
10. tgravityacc-mean-y
11. tgravityacc-mean-z
12. tgravityacc-std-x
13. tgravityacc-std-y
14. tgravityacc-std-z
15. tbodyaccjerk-mean-x
16. tbodyaccjerk-mean-y
17. tbodyaccjerk-mean-z
18. tbodyaccjerk-std-x
19. tbodyaccjerk-std-y
20. tbodyaccjerk-std-z
21. tbodygyro-mean-x
22. tbodygyro-mean-y
23. tbodygyro-mean-z
24. tbodygyro-std-x
25. tbodygyro-std-y
26. tbodygyro-std-z
27. tbodygyrojerk-mean-x
28. tbodygyrojerk-mean-y
29. tbodygyrojerk-mean-z
30. tbodygyrojerk-std-x
31. tbodygyrojerk-std-y
32. tbodygyrojerk-std-z
33. tbodyaccmag-mean
34. tbodyaccmag-std
35. tgravityaccmag-mean
36. tgravityaccmag-std
37. tbodyaccjerkmag-mean
38. tbodyaccjerkmag-std
39. tbodygyromag-mean
40. tbodygyromag-std
41. tbodygyrojerkmag-mean
42. tbodygyrojerkmag-std
43. fbodyacc-mean-x
44. fbodyacc-mean-y
45. fbodyacc-mean-z
46. fbodyacc-std-x
47. fbodyacc-std-y
48. fbodyacc-std-z
49. fbodyacc-meanfreq-x
50. fbodyacc-meanfreq-y
51. fbodyacc-meanfreq-z
52. fbodyaccjerk-mean-x
53. fbodyaccjerk-mean-y
54. fbodyaccjerk-mean-z
55. fbodyaccjerk-std-x
56. fbodyaccjerk-std-y
57. fbodyaccjerk-std-z
58. fbodyaccjerk-meanfreq-x
59. fbodyaccjerk-meanfreq-y
60. fbodyaccjerk-meanfreq-z
61. fbodygyro-mean-x
62. fbodygyro-mean-y
63. fbodygyro-mean-z
64. fbodygyro-std-x
65. fbodygyro-std-y
66. fbodygyro-std-z
67. fbodygyro-meanfreq-x
68. fbodygyro-meanfreq-y
69. fbodygyro-meanfreq-z
70. fbodyaccmag-mean
71. fbodyaccmag-std
72. fbodyaccmag-meanfreq
73. fbodybodyaccjerkmag-mean
74. fbodybodyaccjerkmag-std
75. fbodybodyaccjerkmag-meanfreq
76. fbodybodygyromag-mean
77. fbodybodygyromag-std
78. fbodybodygyromag-meanfreq
79. fbodybodygyrojerkmag-mean
80. fbodybodygyrojerkmag-std
81. fbodybodygyrojerkmag-meanfreq

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variables 3 to 81 are the average values for the mean and standard deviation from these original data. They result from the following processing steps:

1. Merging back the two data sets (randomly separated in test and training sets) into a single data set;
2. Extracting only the means and standard deviations for each variable;
3. Combining information on subject and activity with measurements from different files;
4. Creating appropriate labels for activities and measurements;
5. Averaging all the measurements for same subject and activity. 

The resulting data frame follows the principle of tidy data (one observation per row, one variable per column), using the wide format.
