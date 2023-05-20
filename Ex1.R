library(dplyr)
library(ggplot2)
library(statsr)

data(arbuthnot)
arbuthnot
dim(arbuthnot)
names(arbuthnot) #Q1

arbuthnot$boys
arbuthnot$girls #Q2

ggplot(data = arbuthnot, aes(x = year, y = girls)) +
  geom_point() #Q3

5218 + 4683
arbuthnot$boys + arbuthnot$girls
arbuthnot <- arbuthnot %>%
  mutate(total = boys + girls)
ggplot(data = arbuthnot, aes(x = year, y = total)) +
  geom_line()
ggplot(data = arbuthnot, aes(x = year, y = total)) +
  geom_line() +
  geom_point()
arbuthnot <- arbuthnot %>%
  mutate(more_boys = boys > girls)
data(present)
present
names(present) #Q4

range(present$year)
present <- present %>% 
  mutate(total=boys+girls) %>% 
  mutate(boy_prop=boys/total, girl_prop=girls/total)
ggplot(data=present, aes(x=year, y=boy_prop))+
  geom_point() #Q5

present <- present %>% 
  mutate(more_boys=boys>girls) #Q6

