#### Preamble ####
# Purpose: Sanity check of the data
# Author: Wen Han Zhao
# Date: 19 September 2024 
# Contact: youna.zhao@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Need to have simulated data


#### Workspace setup ####
library(tidyverse)


#### Test data ####

data <- read.csv("data/raw_data/simulated.csv")

#Test for negative number 

data$number_of_marriage |> min() <= 0

#Test for N/A

all(is.na(data$number_of_marriage))
