# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Data: MechaCar_mpg.csv

MechCar prototypes were produced with consideration of the following metrics:  vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance.

Goal: Predict the mpf of MechaCar prototype using the above variables.

Method: Linear model

Results: 
- vehicle length and ground clearance have more of an effect on mpg values than the other variables.

- Given a p-value <0.05, we can reject our null hypothesis that the slope is 0 (no variables affect mpg). Therefore, we can assume that the slope here is non-zero.

-Our R value is 0.71, suggesting that the linear model can predict mpg of MechaCar prototypes better than chance (R value of 0.5). 

## Summary Statistics on Suspension Coils
Data: Suspension_coil.csv

Goal: Determine if the currently manufacturing data meets the design specifications for all manufacturing lots in total and individualls. Specifically, the variance of the suspension coils must not exceed 10 pounds per square inch.

Method:  Calculate the summary statistics for the pounds per square inch (PSI) metrics grouped by lot. 

Results: The total variance of the suspension coils is ~62 PSI, which is within the standard requirement of 100 PSI. CLoser analysis of individual manufacturing lots indicate that Lot 1 and 2 respectively have variances of 0.98 and 7.47 respectively, suggesting that these lots also fall within the 100 PSI variance requirement. However, Lot 3 has a variance of ~170 PSI, suggesting that suspension coils produce here do not meet the design specifications.

## T-Tests on Suspension Coils
Null hypothesis: The PSI across all manufacturing lots is the same as (or not statistically different) from the population mean of 1,500 PSI.

A t-test run on all manufacturing lots (Fig. 1) outputs a p value of 0.06, which is greater than the significance threshold of 0.05. Here, we do not have enough evidence to reject the null hypothesis.

Null hypothesis: The PSI of each individual lot is the same as (or not statistically different) from the population mean of 1,500 PSI.

A t-test run on Lot 1 (Fig. 2) outputs a p value of 1, which is greater than the significance threshold of 0.05. Here, we do not have enough evidence to reject the null hypothesis.

A t-test run on Lot 2 (Fig. 3) outputs a p value of 0.6, which is greater than the significance threshold of 0.05. Here, we do not have enough evidence to reject the null hypothesis.

A t-test run on Lot 3 outputs a p value of 0.04, which is less than the significance threshold of 0.05. Here, we reject the null hypothesis and accept the alternative hypothesis. This coincides with information found in variable 2, where Lot 3 also had the highest variance.

## Study Design: MechaCar vs Competition
Study goal: Quantify the performance of MechaCar against competition. Data of the metrics listed below will be collected over 10 years.

Metrics to quantify/test: 
-miles per hour (mph)
-turning radius
-weight of car

Null hypothesis: MechaCar performs the same as other competitor car models.

Alternative hypothesis: MechCar performs differently than other competitor cal models.

Method of evaluation:  Generally, cars are preferred to have higher mph, higher torque, and a lower turning radius. Therefore, a t-test can be used to compare each metric individually to the competitor's metric. For example, the mph of two cars can be compared to see if one is statistically significant (higher or lower) than the others. If MechaCAR is being compared to multiple companies, a one-way ANOVA can be used instead of multiple t-tests without post-test corrections. Additionally, linear regression can be used to determine how each of these variables affect the other variables. For example, does torque affect mph? Linear regression can provide clarity to these relationships by looking at the correlation coefficient.



