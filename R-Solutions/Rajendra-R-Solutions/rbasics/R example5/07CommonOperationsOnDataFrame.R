student.names <- c("Raj","Rahul","Priya","Poonam")
student.weights <- c( 60.5, 72.5 , 45.2,  47.5)
student.genders <- factor(c("Male","Male","Female","Female"))
spmarks <- c( 70L , 75L , 80L,  85L)
scmarks <- c(60L, 70L, 85L, 70L)

students <- data.frame(student.names,student.weights,student.genders,
        spmarks, scmarks, stringsAsFactors = FALSE)


students[1] 
typeof(students[1])  
students[[1]] #double brackets [[]] return the object in its own type
typeof(students[[1]])
students[["student.names"]] 
typeof(students[["student.names"]])
students$student.names 
typeof(students$student.names)
students[1:3]
students[c("spmarks","scmarks")]
students
students[1,2] #Row number, Column number
students[1:3,1:2]
students[c(1,2),c(1,3)]
students[,1]
students[1,]
students[c(T,F,T,F),]
students[student.genders == "Male",]
students[spmarks >= 75,]