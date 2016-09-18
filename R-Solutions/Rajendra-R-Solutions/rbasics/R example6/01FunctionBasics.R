GetTotalMarks <- function(quiz.marks, viva.marks) {
  
  total.marks <- quiz.marks + viva.marks
  #total.marks
}

spq.marks <- c(70L, 75L, 80L, 85L)

spv.marks <- c(7L, 5L, 8L, 6L)
spt.marks <- GetTotalMarks(spq.marks,
                                             spv.marks)
spt.marks

scq.marks <- c(60L, 70L, 85L, 70L)
scv.marks <- c(8L, 4L, 7L, 9L)
sct.marks <- GetTotalMarks(scq.marks,
                                               scv.marks)
sct.marks

returnMyfullname <- function(name)
{
  cat(name,"Simhadri Appala Naidu", "Vechalapu")
  length(name)
}

str(returnMyfullname)

returnMyfullname('Rajendra')

