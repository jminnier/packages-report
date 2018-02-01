library(tidyverse)
library(here)

## deja vu from yesterday!

## create a data frame of your installed packages


## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv

## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like


ip <- installed.packages() %>%
  as_tibble() %>%
  select(Package:Priority, Built) %>%
  write_csv(path=here("data","installed-packages.csv"))

## when this script works, stage & commit it and the csv file
## PUSH!
