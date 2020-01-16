#Find the description and details of the data set ‘airquality’. 
help("airquality")
# Assigning it a new name ‘air’;make a copy of the data set
air <- airquality

str(air)
# There are 6 variables and 153 observations in the dataset.
# The classes for each variables are shown as Ozone; Solar.R; Wind; Temp; Month; Day

plot(air)# scatterplot matrix of all the variables.

#Find the summary statistics for each variable using ‘sapply()’ 

sapply(air,mean,na.rm=TRUE) 
# It contains result with the mean of each variable, including Ozone.
sapply(air,var,na.rm=TRUE)
sapply(air,sd,na.rm=TRUE)
# It contains result with the sd of each variable, including Solar.R

sapply(air,min,na.rm=TRUE)
sapply(air,max,na.rm=TRUE)
sapply(air,median,na.rm=TRUE)
sapply(air,quantile,na.rm=TRUE)
sapply(air,summary,na.rm=TRUE)

#Create a new data frame-air2 which does not include any missing values
air2 <- na.omit(airquality)
str(air2)
#There are 111 observations in the air2 data set 

#Create and save the ‘air2’ data frame to a csv file. 
write.csv(air2, "air2.csv")