library(ggplot2)

# Use ggplot to display the results
# geom_point assigns each country as points and within it we assign the size of each point
# labs is used to name the x and y axis as well as a main heading
# geom_smooth is used to draw a line of best fit to show a trend in the data and within it we assign a colour to the line

# Plot the results for 2020

vis_fun_2020 <- function(df){
  p2020 <- ggplot(df,aes(births, mort_rt)) + 
    geom_point(size = 2) +
    labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2020)") +
    geom_smooth(method = lm, colour = "red")
  return(p2020)
}

### fig_2020 <- ggplot(data_2020, aes(births, mort_rt)) + 
###  geom_point(size = 2) +
###  labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2020)") +
###  geom_smooth(method = lm, colour = "red")

# Plot teh results for 2021

vis_fun_2021 <- function(df){
  p2021 <- ggplot(df,aes(births, mort_rt)) + 
    geom_point(size = 2) +
    labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2021)") +
    geom_smooth(method = lm, colour = "pink")
  return(p2021)
}

### fig_2021 <- ggplot(data_2021, aes(births, mort_rt)) + 
###  geom_point(size = 2) +
###  labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2021)") +
###  geom_smooth(method = lm, colour = "pink")
  
