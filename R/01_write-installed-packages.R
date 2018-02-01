library(tidyverse)
library(janitor)
library(here)

## deja vu from yesterday!

## create a data frame of your installed packages

ip <- installed.packages() %>% as_tibble()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

ip <- ip %>% select(Package:Priority, Built)

## write it to data/installed-packages.csv
write_csv(ip,path=here("data","installed-packages.csv"))

## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
