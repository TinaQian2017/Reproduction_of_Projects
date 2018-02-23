# DSCI 522 milestone2
# Author: Yue (Tina) Qian
# Date: 2017-12-05
# Function: Download the iris data from url and save it inside the data folder. 

# The data is taken from a URL and saved into the data folder:
download.file(url="https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/d546eaee765268bf2f487608c537c05e22e4b221/iris.csv",
              destfile="data/data.csv")

