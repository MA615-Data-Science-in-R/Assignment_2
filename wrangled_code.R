library(tidyverse)
library(dplyr)
library(magrittr)

## Steps to tidy up the data

# Import the data you need
babies <- read.csv(file = "/Users/zarawaheed/Documents/BostonUniversity/MA615/Homework/Assignment_2/children_per_woman_total_fertility.csv")
mortality <- read.csv(file = "/Users/zarawaheed/Documents/BostonUniversity/MA615/Homework/Assignment_2/child_mortality_0_5_year_olds_dying_per_1000_born.csv")

# Select the relevant columns that you will be running your analysis on
babies_rel <- select(babies, "country" = country, "births" = X2020)
mortality_rel <- select(mortality, "country" = country, "mort_rt" = X2020)

# Join the data together using inner_join which will eliminate the NAs
data_2020 <- inner_join(babies_rel, mortality_rel)

# Convert the data into a tibble
data_2020 <- tbl_df(data_2020)

# If we wanted to use data for two years and make a comparison, we could use the gather() function to combine them into one year
# You can ave your data as a csv so it can be used in the future if needed
# write.csv(data, 'assignment_2.csv')

## Repeat steps for the year 2021

babies_rel <- select(babies, "country" = country, "births" = X2021)
mortality_rel <- select(mortality, "country" = country, "mort_rt" = X2021)

# Join the data together using inner_join which will eliminate the NAs
data_2021 <- inner_join(babies_rel, mortality_rel)

# Convert the data into a tibble
data_2021 <- tbl_df(data_2021)

