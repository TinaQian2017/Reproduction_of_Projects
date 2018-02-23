# DSCI 522 milestone2
# Author: Yue (Tina) Qian
# Date: 2017-12-13
# Function: the script generates a plot of data points for better understanding of the data

# Read data 
data<-read.csv("results/simulated_data/summarized_data.csv",header = T)

# visualize the data and save the plot
library(ggplot2)
g<-ggplot(data = data, aes(x=species,y=sepal_length))+
  geom_boxplot()+
  labs(x="Species",y="Sepal Length",title="Influence of Species on the Sepal Length")+
  geom_jitter()
ggsave(filename = "results/final_results/plot_data.png",plot = g)