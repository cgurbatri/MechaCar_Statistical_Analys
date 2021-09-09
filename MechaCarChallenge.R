## Challenge Assignment ##

# Deliverable 1: Linear regression to predict MPG
# Data: MechaCar MPG dataset

library(dplyr)

setwd("~/Desktop/DATA_ANALYTICS/challenges/module_15_R_analysis/MechaCar_Statistical_Analysis")
dev1_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= dev1_table)

#lm summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= dev1_table))
