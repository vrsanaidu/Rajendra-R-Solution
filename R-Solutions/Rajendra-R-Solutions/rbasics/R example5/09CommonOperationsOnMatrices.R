spmarks <- c( 70L , 75L , 80L,  85L)
scmarks <- c(60L, 70L, 85L, 70L)
smarks <-cbind(spmarks , scmarks)
rownames(smarks) <- c("Raj","Rahul","Priya","Poonam")
smarks

#Subsetting: Extract element(s) from matrix
smarks[,] #row number,column number
smarks[2,2] 
smarks[2,]
smarks[,2]
smarks[1:3,]
smarks[c(1,3),]
smarks[c(T,F,F,T),]

#summary
smarks
rowSums(smarks) #Row wise sum
colSums(smarks) #Column wise sum
colMeans(smarks) #Column wise mean