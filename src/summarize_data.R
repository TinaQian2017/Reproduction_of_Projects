# DSCI 522 milestone2
# Author: Yue (Tina) Qian
# Date: 2017-12-05
# Function: the script helps to select out the data will be used in the project from the raw dataset.


# Read data 
data<-read.csv("data/data.csv",header = T)

# Glance at the data
str(data)

# Only select data we need
library(tidyverse)
data_needed<-data %>%
  select(c("sepal_length", "species"))

# Save the summarised data
write.csv(data_needed,file = "results/simulated_data/summarized_data.csv")

