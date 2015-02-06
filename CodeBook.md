# Codebook for UCI HAR accelerometers cleaned data

The output of the analysis script is a data frame with 180 observations, corresponding to data collected from Samsung Galaxy S smartphone accelerometers during 6 activities performed by 30 subjects. The original data is available and described in the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

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

Variables 3 to 81 are the average values for the mean and standard deviation from the data collected from the smartphone sensors, with triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration; triaxial angular velocity from the gyroscope; and a feature vector with time (initiated with *t*) and frequency (initiated wuth *f*) domain variables.
