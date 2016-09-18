snames <- c("Raj","Rahul","Priya","Poonam")
sweights <- c( 60.5, 72.5 , 45.2,  47.5)
sgenders <- factor(c("Male","Male","Female","Female"))
spmarks <- c( 70L , 75L , 80L,  85L)
sc.marks <- c(60L, 70L, 85L, 70L)


#Subsetting: Extract element(s) using unnamed list
student1 <- list(snames[1], sweights[1], sgenders[1],
                 spmarks[1], sc.marks[1])

student1[1] 
typeof(student1[1]) 
student1[[1]] 
typeof(student1[[1]]) 
student1[1:3] 



student1 <- list(name = snames[1], 
                 weight = sweights[1], 
                 gender = sgenders[1], 
                 physics = spmarks[1],
                 chemistry = sc.marks[1])

student1[["name"]]
student1$gender 
student1[c("physics","chemistry")] 


length(student1)