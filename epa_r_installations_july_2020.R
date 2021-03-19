library(readxl)
library(dplyr)

installs_eisd <- read_excel("R on EISD and ORD machines-2020-07.xlsx", 
                            sheet = 1) %>%
  pull("Computer Name")
  
installs_ord <- read_excel("R on EISD and ORD machines-2020-07.xlsx", 
                           sheet = 2) %>%
  pull("Computer Name")

length(unique(c(installs_eisd, installs_ord)))

