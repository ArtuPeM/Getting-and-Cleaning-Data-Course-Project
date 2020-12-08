## GETTING AND CLEANING DATA COURSE PROJECT
The data was modified to get a tidy data set for analysis. 

 -The original data sets were loaded and merged to get an unique data set.
 
 -The variables were labeled appropiately
 
 -Extracting just the variables with mean and standar deviation.
 
 -Adding names for the activity variable in the data set
 
 -Creating a second data set with the means for each subject and each activity for each variable.
 
## VARIABLE NAMES
### Factor variables
The first two variables are the id subject and the activities tested in the original study.

### Measurements
For each activity and subject were measured a wide variety of features. In this case it was extracted just the variables which give us information about the mean and standar deviation.
**t** is for time **f** is for frequency

"tBodyAccmeanX" 

"tBodyAccmeanY"               

"tBodyAccmeanZ"               

"tBodyAccstdX"                

"tBodyAccstdY"                 

"tBodyAccstdZ"                

"tGravityAccmeanX"             

"tGravityAccmeanY"            

"tGravityAccmeanZ"            

"tGravityAccstdX"             

"tGravityAccstdY"              

"tGravityAccstdZ"             

"tBodyAccJerkmeanX"            

"tBodyAccJerkmeanY"           

"tBodyAccJerkmeanZ"            

"tBodyAccJerkstdX"            

"tBodyAccJerkstdY"             

"tBodyAccJerkstdZ"            

"tBodyGyromeanX"               

"tBodyGyromeanY"              

"tBodyGyromeanZ"               

"tBodyGyrostdX"               

"tBodyGyrostdY"                

"tBodyGyrostdZ"               

"tBodyGyroJerkmeanX"           

"tBodyGyroJerkmeanY"          

"tBodyGyroJerkmeanZ"           

"tBodyGyroJerkstdX"           

"tBodyGyroJerkstdY"            

"tBodyGyroJerkstdZ"           

"tBodyAccMagmean"              

"tBodyAccMagstd"              

"tGravityAccMagmean"           

"tGravityAccMagstd"           

"tBodyAccJerkMagmean"          

"tBodyAccJerkMagstd"          

"tBodyGyroMagmean"             

"tBodyGyroMagstd"             

"tBodyGyroJerkMagmean"         

"tBodyGyroJerkMagstd"         

"fBodyAccmeanX"               

"fBodyAccmeanY"               

"fBodyAccmeanZ"                

"fBodyAccstdX"                

"fBodyAccstdY"                

"fBodyAccstdZ"                

"fBodyAccmeanFreqX"            

"fBodyAccmeanFreqY"           

"fBodyAccmeanFreqZ"            

"fBodyAccJerkmeanX"           

"fBodyAccJerkmeanY"            

"fBodyAccJerkmeanZ"           

"fBodyAccJerkstdX"             

"fBodyAccJerkstdY"            

"fBodyAccJerkstdZ"             

"fBodyAccJerkmeanFreqX"       

"fBodyAccJerkmeanFreqY"        

"fBodyAccJerkmeanFreqZ"       

"fBodyGyromeanX"               

"fBodyGyromeanY"              

"fBodyGyromeanZ"               

"fBodyGyrostdX"               

"fBodyGyrostdY"                

"fBodyGyrostdZ"               

"fBodyGyromeanFreqX"           

"fBodyGyromeanFreqY"          

"fBodyGyromeanFreqZ"           

"fBodyAccMagmean"             

"fBodyAccMagstd"               

"fBodyAccMagmeanFreq"         

"fBodyBodyAccJerkMagmean"      

"fBodyBodyAccJerkMagstd"      

"fBodyBodyAccJerkMagmeanFreq"  

"fBodyBodyGyroMagmean"        

"fBodyBodyGyroMagstd"          

"fBodyBodyGyroMagmeanFreq"    

"fBodyBodyGyroJerkMagmean"     

"fBodyBodyGyroJerkMagstd"     

"fBodyBodyGyroJerkMagmeanFreq"