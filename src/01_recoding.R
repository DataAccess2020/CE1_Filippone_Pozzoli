# Recoding the dataset ----

# Loading package

library(tidyverse)

# We recode the variable "agea" in order to split the subjects in 3 groups.

data <- mutate(data, 
               age = ifelse(data$agea < 30, "Under 30", 
                            ifelse(data$agea <= 60, "Between 30 and 60", "Over 60" ) ))

# We recode the variable "wrclmch" depending on the answers.

data <- mutate(data, 
               global_warming_attitude = ifelse(data$wrclmch <=2, "Not Worried", 
                                                ifelse(data$wrclmch == 3, "Somewhat worried", "Worried")))