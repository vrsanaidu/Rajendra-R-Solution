genders <- c("Male","Male","Female","Female") # Character vector
genders
genders <- c(2L,2L,1L,1L) # Integer vector
genders
genders <- factor(c("Male","Male","Female","Female")) # factor
genders
as.numeric(genders) #Explicit conversion
bloodgroups <- factor(c("A","AB","O","AB"), levels = c("A","B","AB","O")) 
str(bloodgroups)