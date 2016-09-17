v <- c(10, 20, 30)
names(v) <- c("Moe", "Larry", "Curly")
v
v["Larry"]

v <- c(1,2,3)
v <- c(v,4) 
v
w <- c(5,6,7,8)

v <- c(v,w)
v

v <- c(1,2,3)
v[10] <- 10
v

append(1:10, 99, after=5)

cbind(1:6)

cbind(1:6,1:3)

(1:6) + (1:5)

f <- factor(c("Win","Win","Lose","Tie","Win","Lose"))
f # it displays levels also

lst <- list(
             far.left=0.023,
             left=0.159,
             mid=0.500,
             right=0.841,
             far.right=0.977)

lst
lst$far.left

for (nm in names(lst)) cat("The", nm, "limit is", lst[[nm]], "\n")

for (nm in names(lst))
  {
   cat("The", nm, "limit is", lst[[nm]], "\n")
  }

#List null values

lst <- list("Moe", NULL, "Curly")   
lst

lst[sapply(lst, is.null)] <- NULL
lst

# removing with condition, list
lst[lst < 0] <- NULL

#matrix
theData <- c(1.1, 1.2, 2.1, 2.2, 3.1, 3.2)
mat <- matrix(theData, 2, 3)
mat

N <- 1000000
dfrm <- data.frame(dosage=numeric(N), lab=character(N), response=numeric(N))
dfrm

