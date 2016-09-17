pi
sqrt(2)
sqrt(4)
help(sqrt)
example(sqrt)
?sqrt

cv <- function(x) sd(x)/mean(x)
cv(1:10)
fn <- function(x,y)
{
  x*y
}

fn(2,3)
fn

x <- 0
x <- pi

x <- 0 
x < - pi

save.image() # to save workspace
history() # showing command history
history(50) # showing command history

x <- .Last.value  # saving value of last function

search() # to list packages currently loaded into R 

#Use either the library function or the require function to load the package into R:
#library(packagename) to load
# detach(package:MASS) to detach

head(pressure)

help(pressure)          # Bring up help page for pressure dataset

data()                  # Bring up a list of datasets
data(Cars93, package="MASS")

library() # to list installed packages

# install.packages("packagename") # install packages from CRAN

chooseCRANmirror()

# get the URL of the mirror, look at the first element of the repos option:
options("repos")[[1]][1]
getwd()
source("statistics.R") # to read and execut text file

Sys.getenv("R_HOME") # R home directory

