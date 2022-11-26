# Creating contingency table -----

#Loading package 

library(gmodels)

#Creating a contingency table with the two recoded variables 

CrossTable(data$age, data$global_warming_attitude)

#Executing the chi-squared test 

options(scipen = 99 )
chisq.test(data$age, data$global_warming_attitude, correct = FALSE)
