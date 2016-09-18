#Set working directory
setwd(file.path("F:","PS","R","Mod9")) 
#Set file path
file <- file.path("data","05Sample.xlsx")
install.packages("XLConnect")
library(XLConnect)
my.data <- readWorksheetFromFile(file,
                                 sheet=1,
                                 startRow=2)
str(my.data)
my.data <- transform(my.data, 
                     student.gender = as.factor(student.gender),
                     spmarks = as.integer(spmarks),
                     scmarks = as.integer(scmarks))                     
str(my.data)
#Other packages : xlsReadWrite, xlsx , gdata 