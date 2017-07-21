#The data used for analysis in this notebook is from the dataframe train_edited.csv which was cleaned by Tomas Bencomo. 
# Further description about how the file was cleaned can be found in his notebook.

# Import necessary libraries
library(ggplot2)

# import the data
df <- read.csv('datasets/train_edited.csv')
head(df)
str(df)

# Lets begin by analyzing the relationship between age and fare.
# We looked at the top 38 most expensive fares and tried to see if there was any correlation with age.
# To find these fares, we only analyzed the fares that were 2 standard deviations above the mean. 
# The amount of tickets that matched this description was 38 tickets.

standard_dev <- sd(df$Fare)
two_sd_over <- mean(df$Fare) + 2*standard_dev

fares <- df$Fare[df$Fare > two_sd_over]
ages <- df$Age[df$Fare > two_sd_over]
length(fares)

qplot(Age, Fare, data = df, color = Sex)
cor(df$Age, df$Fare)

survived_ages <- df$Age[df$Survived == 1]
qplot(survived_ages, geom="histogram", bins = 30)