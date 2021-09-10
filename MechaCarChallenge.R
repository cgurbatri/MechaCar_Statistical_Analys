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

# Deliverable 2: Suspension coil summary statistics
dev2_table <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
total_summary<- dev2_table %>% summarize(Mean=mean(PSI), Median=(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- dev2_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')                                      

# Deliverable 3: T test on suspension coils
t.test(dev2_table$PSI, mu = 1500)
t.test(subset(dev2_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(dev2_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(dev2_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

