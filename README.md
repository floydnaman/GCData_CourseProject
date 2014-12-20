# "Getting and Cleaning Data" Course Project README #

#### The directory includes the following files: ####

* **README.md** 
* **UCI HAR Dataset**
* **CodeBook.md** (Code book describing all variables)
* **run_analysis.R** (Script to produce tidy data set)
* **X5.txt** (Tidy data set)

## Original Data ##

### Source of the Data: ###

The original data set, the "Human Activity Recognition Using Smartphones Data Set", can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

A full description is available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Description of the Data: ###

The data set consists of the processed measurements of the gyroscope and accelerometer from a smartphone worn by test subjects while they were performing activities of daily living as well as derived variables, including the standard deviations, the means, the energy etc.. The subjects were divided into two groups, generating training and testing data, respectively. 

Each record is provided with:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment. 

## Tidy Data ##

The tidy data set features the averages of the mean and standard deviation variables, which were provided in the original data set for the sensor measurements, sorted by the subject and the activity.

### Procedure: ###

1. **Read in data into workspace** - Read in relevant data required to produce the tidy dataset. Note that data in the Inertial Signals directory is not needed for this purpose. The data are read in using `read.table()` with suitable arguments, and stored in variables eponymous with the file names.

2. **Merge test and training data** - Merge the two datasets and store it as `X`, and also the subject and activity identity variables using `rbind()`.

3. **Coerce column data frames into meaningful vectors** - Subset label and identity variables to give meaningful vectors for better coding.

4. **Give descriptive activity names and subject labels** - Create a data frame `X1` by column binding subject and activity vectors, and use descriptive activity names to name the activities. The data frame is given suitable column names.

5. **Give descriptive variable names to dataset** - `X` is given descriptive variable names using `features`.

6. **Extract measurements on mean and std for each measurement and subset dataset** - First, create a logical vector `isMeanorStd` for extracting the measurements on the mean and standard deviation only for each measurement. This is done using `grepl()`. Then subset `X` using this vector, and store the result in `X2`.

7. **Produce sorted dataset as of step 4** - First, column bind `X1` and `X2` to give unsorted data frame `X3`. Sort `X3` on the basis of subject and then activity using `order()`. This sorted data frame is stored as `X4`.

8. **Produce dataset as of step 5** - Split `X4` for each subject and activity combination using `split()` and then apply `colMeans()` on this splitted list variable via `sapply()`. Take the transpose of the result and append the required subject and activity vectors to it. Finally, give this merged data frame suitable column names and store it as `X5`.	 

9. **Write tidy dataset into workspace** - Save `X5` in the workspace using `write.table()` as "X5.txt".

</br>Script for producing the tidy set: [run_analysis.R](https://github.com/floydnaman/GCData_CourseProject/blob/master/run_analysis.R)

Read tidy data set by reproducing the following code:

    data <- read.table(file_path, header = TRUE)
    View(data)
Note that the *UCI HAR Dataset* directory needs to present in the working directory in order to run the script successfully.
