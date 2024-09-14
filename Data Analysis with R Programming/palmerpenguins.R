as_tibble(diamonds)
library(tidyverse)
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("palmerpenguins")
library("palmerpenguins")
install.packages("here")
library("here")
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>% select(-species)
penguins %>% rename(island_new=island)
rename_with(penguins,tolower)
clean_names(penguins)



penguins %>% arrange(bill_length_mm)  #ascending order
penguins %>% arrange(-bill_length_mm) #descending_order

penguins2 <- penguins %>% arrange(-bill_length_mm)

penguins2

View(penguins2)
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))
