---
title: "README: Getting & Cleaning Data Project"
vignette: >
  %\VignetteEncoding{UTF-8}
---

***
###Overview
Data collected from the accelerometers from the Samsung Galaxy S smartphone as described by [Anguita et al. ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) was gathered, processed and transformed in accordance with the tidy data principles. This README file describes this process.

###Data source:
The data is available for download: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

###Raw data structure:
Each observation in the raw data set provides the following measurements:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label (6 different activities) 
- An identifier of the subject who carried out the experiment.

***
###Data processing
To obtain a tidy data set for further analysis, the following steps are performed by the run_analysis.R script:

1. After downloading and decompressing the data file, test and training data sets (*x_test.txt*, *y_test.txt*, *x_train.txt*, *y_train.txt*), as well as subject (*subject_test.txt*, *subject_train.txt*), features/variables (*features.txt*), and activity label data (*activity_labels.txt*) is read and stored. 
2. Measurement data (*x_test.txt* dim: 2947 x 561) and train data (*x_train.txt* dim: 7352 x 561) are concatenated into a single 10299 x 561 data frame.
3. Activtity data (*y_test.txt* dim: 2947 x 1) and train data (*y_train.txt* dim: 7352 x 1) are concatenated into a single 10299 x 1 data frame.
4. Subject data (*subject_test.txt* dim: 2947 x 1) and train data (*subject_train.txt* dim: 7352 x 1) are concatenated into a single 10299 x 1 data frame.
5. Activity and subject column names are replaced with descriptive labels.
6. Measurement, activity, and subject data are concatenated into a single 10299 x 563 data frame (*all.data*).
7. Variable names of the *all.data* are renamed with *features.txt* variable names.
8. Only variables including the mean or standard derivation of a variable are selected and stored in a new data frame: *short.data* - dim: 10299 x 81,
9. Integer levels of the factor "activities" are replaced with the *activity_labels.txt* data.
10.Variable names are changed into easily understandable descriptive labels.
11. The mean of short.data measurements are computed, aggregated by subject and activity and stored as tidy data in *tidy.data* - dim: 180 x 68 according to the tidy data principles.
12. *tidy.data* is written to a text file *tidy_data.txt*.

