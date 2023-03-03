# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')
# dataset = dataset[, 2:3]

# create training and test data set
# install.packages('caTools')
library(caTools)

set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# feature scaling
# like in our case salary exponential is huge than age, so in ML case the age will be ignored
# to prevent this we try to scale them into a range using standardization or normalization

# training_set[, 2:3] = scale(training_set[, 2:3])
# test_set[, 2:3] = scale(test_set[, 2:3])
