#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here
#Female Mass Histogram
ggplot(data = dat, aes(x = F_mass)) +
  labs(x = "Female Mass(g)") +
  geom_histogram()

#Log10 Historam
ggplot(data = dat, aes(x = F_mass)) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") +
  geom_histogram(fill = "blue")

#Including male birds
ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") 

#Making subplots for each family
ggplot(data = dat, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") +
  facet_wrap(~ Family)

#Wing size
ggplot(data = dat, aes(x = F_wing)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x = M_wing), alpha = 0.3) +
  scale_x_log10() +
  labs(x = "Female Mass(g)") +
  facet_wrap(~ Family)
