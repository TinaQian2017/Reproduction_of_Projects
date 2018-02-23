# DSCI 522 milestone2
# Author: Yue (Tina) Qian
# Date: 2017-12-05
# Function: the script helps to do the linear regression analysis and generate summary table 
# of the analysis 


# Read data 
data<-read.csv("results/simulated_data/summarized_data.csv",header = T)

# Perform a linear regression and save result in a table
lm_result<-lm(data=data,sepal_length~species)
result<-broom::tidy(summary(lm_result))
write.csv(result,file = "results/final_results/lm_result.csv")

