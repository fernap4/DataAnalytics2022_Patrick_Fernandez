info <- diamonds
help(diamonds)
ggplot(data = info) + geom_histogram(mapping=aes(x=price), binwidth=200)
library(magrittr)
smaller <- diamonds %>% filter(carat < 3) 
ggplot(data = smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.1)

ggplot(data = smaller, mapping = aes(x = carat, color = cut)) + geom_freqpoly(binwidth = 0.1)
