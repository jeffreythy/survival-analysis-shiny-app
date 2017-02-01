# This library contain the data "tongue"
library(OIsurv)

# Attach the data
data("tongue")

# Set type to a factor
tongue$type <- as.factor(tongue$type)

# Added two more columns to the dataset for illustration
gender <- sample(c("f","m"), 80, replace=TRUE)
category <- sample(c("a","b","c"), 80, replace=TRUE)
df <- as.data.frame(cbind(tongue[1:3], gender, category))
