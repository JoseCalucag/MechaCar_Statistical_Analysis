# Deliverable 1 ------------------------

# Load dplyr library package
library(dplyr)

# Read MechaCar.csv
MechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# Perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

# Deliverable 2 ------------------------

# Read Suspended_Coil.csv
SusCoil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# Create total_summary dataframe
total_summary <- SusCoil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), StandardDeviation=sd(PSI))

# Create lot_summary dataframe
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), StandardDeviation=sd(PSI))