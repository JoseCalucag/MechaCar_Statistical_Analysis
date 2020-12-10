<h1 align = "center"> MechaCar_Statistical_Analysis </h1>

<p align = "center">
<img src = "https://i.pinimg.com/originals/77/70/86/777086755a2f787bf4d1973e7dec3f18.png" width = "700" height = "300">
 </p>
 
<h2>Overview</h2>
The purpose of this analysis is to offer insights on AutosRUs' newest prototype, the MechaCar. The manufcaturing team has come across some problems on the production line. Using two data sets that look at the mpg tests of 50 protoypes and the weight capacities of suspension coils respectively, I hope the data can predict some actionable insights for AutosRUs.

<h2>Linear Regression to Predict MPG </h2>

<p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/deliverable1LM.png" width = "600" height = "200">
 </p>

In this section, I based my analysis using the MechaCar_mpg.csv dataset that contains the miles per gallon (mpg) tests of 50 prototype MechaCars. With that, I preformed a multiple linear regression to see if it could predict the mpg dependent variable by using the vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) independent variables. 

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
There are two variables that show a non-random amount of variance: the vehicle_length and the ground_clearance. Both have an extremely small p-value meaning that they have a high level of significance. It should also should be noted that the intercept has a vhigh level of significance meaning that there are still other factors contributing to the variance of the miles per gallon of the MechaCar.

#### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero as we see that the p-value is 5.35e-11, which falls signifcantly in our assumed signifance level of 0.05%.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The main indicator if the linear model predicts the mpg of the prototype is the r-squared value. In this case, the r-square output of 0.7149 means that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 71 times. Therefore, we can assume that this linear model can be effective.

<h2> Summary Statistics on Suspension Coils </h2>

The Suspension_Coil.csv is comprised of 150 different vehicles ID, 3 different lot numbers, and corresponding PSI levels for each vehicle. Based on that dataset, I created two summary tables to look at the mean, median, variance, and standard deviation of data. The first table looked at of the data as a whole, while the second table looked specific at each of the three different lots that the MechaCars were divided into. Here are the two tables.

 <p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/deliverable2Total.png" width = "400" height = "100">
 </p>

<p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/deliverable2Lot.png" width = "500" height = "200">
 </p>
 


#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Looking at the total summary, the variance of all lots is 62.29356 which seems to be favorable but could be better. Bu if we look at the lots individually, we can see that lot 3 can be defining reason for the low variance as it's variance is 170, almost 3 times the collective variance; whereas lot 1 and 2 have variances of 0.980 and 7.47 respectively. Because of this, the manufacturing team should deal with cars in lots 1 and 2.

<h2> T-Tests on Suspension Coils </h2>
In this section, I wanted to determine if all or any of the manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch. In order to do this, I used R's t.test() function to find four different p-values. After running the tests, all four p-values where much greater than .05 meaning that I would fail to reject that there is a statistical difference between the four groups and the population mean.

 <p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/Deliverable3All.png" width = "500" height = "200">
 </p>

<p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/Deliverable3Lot1.png" width = "500" height = "200">
 </p>
 
 <p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/Deliverable3Lot2.png" width = "500" height = "200">
 </p>
 
 <p align = "center">
<img src = "https://github.com/JoseCalucag/MechaCar_Statistical_Analysis/blob/main/pics/Deliverable3Lot3.png" width = "500" height = "200">
 </p>
 
<h2> Study Design: MechaCar vs Competition </h2>

#### What metric or metrics are you going to test?
I believe that fuel efficiency is an important factor when looking to purchase a car. So, we can get a general idea by looking at both city and highway fuel efficiency. By looking at variables both and then comparing the MechaCar to the competition, we can get a general idea of the performance and even the longevity of the MechaCar compared to the competition.

#### What is the null hypothesis or alternative hypothesis?
The null hypothesis is that the MechaCar has the same fuel efficiencies as the competition. The alternative Hypothesis is that they are not all the same.

#### What statistical test would you use to test the hypothesis? And why?
I believe the ANOVA test would be the most ideal initially so you can test the entire pool and get a general idea if the null hypothesis is true. Cause, if the alternative hypothesis is true, then we can find the the positive differences of the MechaCar.

#### What data is needed to run the statistical test?
A sample size of 50 individual cars and their fuel efficiency data. Additionally, when looking to compare cars to the MechaCar, I would want the sample pool to generally be th same specifics as the MechaCar (i.e. size, type, price, etc.)
