#from JB
library(fs)
library(purrr)
library(here)

dirs <- c(here("data"), here("figs"))
dirs <- keep(dirs, dir_exists) # this causes R to crash
files <- map(dirs, dir_ls) %>% flatten_chr()
file_delete(files)
