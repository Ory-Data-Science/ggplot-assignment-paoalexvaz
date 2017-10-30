# Load library
library(tidyverse)

#set up data frame for plotting
size_mr_data <- data.frame(
  body_mass = c(32000, 37800, 347000, 4200, 196500, 100000, 4290, 
    32000, 65000, 69125, 9600, 133300, 150000, 407000, 115000, 
    67000,325000, 21500, 58588, 65320, 85000, 135000, 20500, 1613,
    1618),
  metabolic_rate = c(49.984, 51.981, 306.770, 10.075, 230.073, 
    148.949, 11.966, 46.414, 123.287, 106.663, 20.619, 180.150, 
    200.830, 224.779, 148.940, 112.430, 286.847, 46.347, 142.863, 
    106.670, 119.660, 104.150, 33.165, 4.900, 4.865))
    
#code goes here
#Plot 1
ggplot(data = size_mr_data, aes(x = body_mass, y = metabolic_rate)) +
  geom_point()

#Plot 2
ggplot(data = size_mr_data, aes(x = log(body_mass), y = log(metabolic_rate))) +
  geom_point()

#Plot 3
ggplot(data = size_mr_data, aes(x = body_mass, y = metabolic_rate)) +
  scale_x_log10() +
  scale_y_log10() +
  geom_point(size = 5)
