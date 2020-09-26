library(roperators)
library(stringr)
library(tidyverse)
library(magrittr)

# Elige alguno de los built-in datasets de R,
data(mtcars)
print(mtcars)
# Aplica los seis verbos de dplyr, al menos una vez
mtcars %>% 
  group_by(hp) %>% 
  filter(gear== 3) %>%
  mutate(drat =drat*10) %>%
  arrange(desc(drat)) %>% 
  summarize(HPcyl=median(hp),maxSL=max(hp))