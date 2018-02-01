library(tidyverse)
library(here)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
freq <- read_csv(here("data","add-on-packages-freqtable.csv"))

## read that csv into a data frame, then ...

## if you use ggplot2, code like this will work:
p <- ggplot(freq, aes(x = Built, y = n, fill=Built)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
ggsave(plot=p,filename="built-barchart.png",path=here("figs"))

## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
