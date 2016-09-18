names <- c("Raj","Rahul","Priya","Poonam")
weights <- c( 60.5, 72.5 , 45.2,  47.5)
genders <- factor(c("Male","Male","Female","Female"))
pmarks <- c( 70L , 75L , 80L,  85L)
cmarks <- c(60L, 70L, 85L, 70L)

#Creating unnamed list
student1 <- list(names[1], weights[1], genders[1], 
                 pmarks[1], cmarks[1])
str(student1)
student1

# very flexible to display however you want
list(names, weights[1], genders[1],
                 pmarks[1], cmarks[1])

#Creating named list
student1 <- list(name = names[1], 
                 weight = weights[1], 
                 gender = genders[1], 
                 physics = pmarks[1],
                 chemistry = cmarks[1])

str(student1)

student1 <- list(name = names[1], 
                 weight = weights[1], 
                 gender = genders[1], 
                 marks = c(pmarks[1], cmarks[1]))

str(student1)