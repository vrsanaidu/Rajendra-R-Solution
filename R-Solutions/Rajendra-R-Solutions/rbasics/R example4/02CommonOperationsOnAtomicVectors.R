#Peforming arithmetic and logical operation on atomic vectors
sp.marks <- c( 70L , 75L , 80L,  85L)
str(sp.marks)
scmarks <- c(60L, 70L, 85L, 70L)
sp.marks + scmarks 
sp.marks >= 75 

#Extract element(s) from atomic vectors (Subsetting)
snames <- c("Raj","Rahul","Priya","Poonam")
snames[1] 
snames[2] 
snames[1:3] 
snames[sp.marks >= 75]

sweights <- c( 60.5, 72.5 , 45.2,  "47.5")
str(sweights)

as.numeric(sp.marks >= 75)
as.character(sp.marks) 
sweights <- c( 60.5, 72.5 , 45.2,  47.5) 
as.integer(sweights)
as.numeric(snames) 