#tidyr
    #gather() -  Reshaping wide format to long format,takes multiple columns, and gathers them into key-value pairs: it makes “wide” data longer
    #spread()   - takes two columns (key & value) and spreads in to multiple columns, it makes “long” data wider
    #separate() -  splits a single column into multiple columns 
    #unite() -  combines multiple columns into a single column

library(tidyr)
library(dplyr)

group <- c(1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3)
year <- c(2006, 2007, 2008, 2009, 2006, 2007, 2008, 2009, 2006, 2007, 2008, 2009)
#as.integer(rnorm(12,mean=20,sd=10))
Qtr.1 <- c(as.integer(rnorm(12, mean = 20, sd = 3)))
Qtr.2 <- c(as.integer(rnorm(12, mean = 20, sd = 2)))
Qtr.3 <- c(as.integer(rnorm(12, mean = 20, sd = 4)))
Qtr.4 <- c(as.integer(rnorm(12, mean = 20, sd = 5)))

long_df <- data.frame(group, year, Qtr.1, Qtr.2, Qtr.3, Qtr.4)
long_df

long_df <- long_df %>% gather(Quarter, Revenue, Qtr.1:Qtr.4) # same result
long_df %>% gather(Quarter, Revenue, - group, - year) # same result
long_df %>% gather(Quarter, Revenue, 3:6) # same result
long_df %>% gather(Quarter, Revenue, Qtr.1, Qtr.2, Qtr.3, Qtr.4) # same result