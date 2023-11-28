library(tidyverse)
library(here)

# Penis measurements (and self-reported data) from various sources across many countries and regions.
# by Lukas Burk
path <- "data/penis_long_format.csv"
read_csv(here(path))
  
