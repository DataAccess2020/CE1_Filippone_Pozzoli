# Creating the plot----

barplot(table(data$global_warming_attitude, data$age), beside = T, 
        main = "Climate change Anxiety", 
        legend.text = c("Not Worried", "Somewhat worried", "Worried" ),
        col = c("lightblue", "mistyrose", "lightcyan"))
