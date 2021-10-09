library(ggplot2)

source(file = "/Users/zarawaheed/Documents/BostonUniversity/MA615/Homework/Assignment_2/wrangled_code.R", echo = TRUE)

# Use ggplot to display the results
# geom_point assigns each country as points and within it we assign the size of each point
# labs is used to name the x and y axis as well as a main heading
# geom_smooth is used to draw a line of best fit to show a trend in the data and within it we assign a colour to the line

# Plot the results for 2020

fig_2020 <- ggplot(data_2020, aes(births, mort_rt)) + 
  geom_point(size = 2) +
  labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2020)") +
  geom_smooth(method = lm, colour = "red")

# Plot teh results for 2021

fig_2021 <- ggplot(data_2021, aes(births, mort_rt)) + 
  geom_point(size = 2) +
  labs(x = "Babies per Woman", y = "Mortality Rates", main = "Effect of Babies per Woman on Mortality rates (2021)") +
  geom_smooth(method = lm, colour = "pink")
  