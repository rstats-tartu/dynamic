#' ---
#' title: Penis size vs reporting method
#' date: 2023-11-28
#' ---

#'  
#+
library(readr)
library(ggplot2)
library(dplyr)
library(forcats)
library(here)


#' 
#' Penis measurements (and self-reported data) from various sources across many countries and regions
#' by Lukas Burk.
#' Importing data.
#+
path <- "data/penis_long_format.csv"
penis <- read_csv(here(path))

#+
penis

#' 
#' Plotting penis size versus reporting @fig-pplot1.
#+
#| label: fig-pplot1
#| fig-cap: "Self-reporting exaggerates penis size."
penis %>% 
  ggplot(aes(Method, length)) +
  geom_boxplot() +
  geom_point(position = "jitter") +
  labs(y = "Average penis length, cm")

#' 
#' Plotting penis size versus reporting in different world regions @fig-pplot2.
#+
#| label: fig-pplot2
#| fig-cap: "Penis size in different regions."
penis %>% 
  ggplot(aes(fct_reorder(Region, length), length, color = Method)) +
  geom_boxplot(outlier.shape = NULL, position = position_dodge2(preserve = "single")) +
  geom_point(position = position_dodge(0.75)) +
  labs(y = "Average penis length, cm") +
  coord_flip() +
  theme(
    axis.title.y = element_blank(),
    legend.position = "top"
    )





