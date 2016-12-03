install.packages("anytime")
library(anytime)
options(digits.secs = 6) ## for fractional seconds below
Sys.setenv(TZ = anytime:::getTZ()) ## helper function to try to get TZ

#Example1
anytime(20160101L + 0:2)

