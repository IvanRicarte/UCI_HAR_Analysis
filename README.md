# Repository description

This repository contains the R script to process the data collected rom the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The goal of the script *run_analysis.R* is to prepare tidy data that can be used for later analysis. You should download the script and the original data set, a set of files compressed in a single zip file (a copy is available [here](http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)). 

In R, run the script passing the name of the zip file as argument, as in:

```
source("run_analysis.R")
data <- run_analysis("UCI HAR Dataset.zip")
```
The output is a data frame, prepared for analysis according to the principles of Tidy Data (see *Wickham, Hadley: Tidy Data, in Journal of Statistical Software, 59(10), August 2014*), after the application of the following tasks:

1. Merging back the two data sets (randomly separated in test and training sets) into a single data set;
2. Extracting only the means and standard deviations for each variable;
3. Combining information on subject and activity with measurements from different files;
4. Creating appropriate labels for activities and measurements;
5. Averaging all the measurements for same subject and activity.
