#' ---
#' title: Penis size vs reporting method
#' date: 2023-11-28
#' ---

#'  
#+
library(tidyverse)
library(here)


#' 
#' Penis measurements (and self-reported data) from various sources across many countries and regions
#' by Lukas Burk.
#' Importing data.
#+
path <- "data/penis_long_format.csv"
penis <- read_csv(here(path))

#' 
#' Plotting penis size versus reporting @fig-pplot.
#+
#| label: fig-pplot
#| fig-cap: "Well somebody is exaggerating their member size."
penis %>% 
  ggplot(aes(Method, length)) +
  geom_boxplot() +
  geom_point(position = "jitter")

