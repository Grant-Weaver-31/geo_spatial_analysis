library(tidyverse)
library(tidycensus)
library(mapboxapi)
library(mapview)
library(tigris)

options(tigris_use_cache = TRUE)

dc_income <- get_acs(
  geography = "tract", 
  variables = "B19013_001",
  state = "DC", 
  year = 2020,
  geometry = TRUE
)

plot(dc_income["estimate"])

dc2023inc <- get_acs(
  geography = "tract", 
  variables = "B19013_001",
  state = "DC", 
  year = 2023,
  geometry = TRUE
)

