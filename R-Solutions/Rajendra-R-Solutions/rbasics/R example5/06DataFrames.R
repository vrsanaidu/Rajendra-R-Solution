snames <- c("Raj","Rahul","Priya","Poonam")
sweights <- c( 60.5, 72.5 , 45.2,  47.5)
sgenders <- factor(c("Male","Male","Female","Female"))
spmarks <- c( 70L , 75L , 80L,  85L)
scmarks <- c(60L, 70L, 85L, 70L)
#Create data frame
students <- data.frame(snames,sweights,sgenders,
                       spmarks, scmarks)
typeof(students)
students
str(students)

#Use stringAsFactors = FALSE , to avoid converstion of character vector to factor
students <- data.frame(snames,sweights,sgenders,
                       spmarks, scmarks, 
                       stringsAsFactors = FALSE)
str(students)

gnames <- data.frame("Rajendra","Simhadri","Naidu",stringsAsFactors = FALSE)
str(gnames)
