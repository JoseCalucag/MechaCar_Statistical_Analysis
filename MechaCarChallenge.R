# Deliverable 1 ------------------------

# Load dplyr library package
library(dplyr)

# Read MechaCar.csv
MechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# Perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

