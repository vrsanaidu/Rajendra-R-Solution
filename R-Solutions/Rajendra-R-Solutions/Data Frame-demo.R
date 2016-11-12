nodata <- data.frame(x = numeric(0), y = integer(0), z = character(0))
str(nodata)
nodata

Died.At <- c(22, 40, 72, 41)
Writer.At <- c(16, 18, 36, 36)
First.Name <- c("John", "Edgar", "Walt", "Jane")
Second.Name <- c("Doe", "Poe", "Whitman", "Austen")
Sex <- c("MALE", "MALE", "MALE", "FEMALE")
Date.Of.Death <- c("2015-05-10", "1849-10-07", "1892-03-26", "1817-07-18") 

writers_df <- data.frame(Died.At, Writer.At, First.Name, Second.Name, Sex, Date.Of.Death) 

writers_df

nrow(writers_df)
ncol(writers_df) 