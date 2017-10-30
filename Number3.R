#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here
#adult mass vs. newborn mass
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") +
  geom_point()

#log transformation
ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) +
  labs(x = "Adult Mass", y = "Newborn Mass") + scale_x_log10() + scale_y_log10() + geom_point()

#data plots colored by order
ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) +
  labs(x = "Adult Mass", y = "Newborn Mass") + scale_x_log10() + scale_y_log10() + geom_point()

#facet_wrap
ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) +
  labs(x = "Adult Mass", y = "Newborn Mass") + scale_x_log10() + scale_y_log10() + geom_point() +
  facet_wrap(~ order)

#geom_smooth
ggplot(data = dat, aes(x = mass.g., y = newborn.g., color = order)) +
  labs(x = "Adult Mass", y = "Newborn Mass") + scale_x_log10() + scale_y_log10() + geom_point() +
  facet_wrap(~ order) +
  geom_smooth(method = "lm")
