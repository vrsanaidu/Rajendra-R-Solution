smarks <- matrix(c( 70L, 75L, 72L, 80L, 50L,
                           80L, 85L, 60L, 72L, 88L,
                           60L, 70L, 87L, 55L, 90L,
                           85L, 70L, 74L, 86L, 78L ),ncol=5,nrow=4, byrow=TRUE)

rownames(smarks) <- c("Raj","Rahul","Priya","Poonam")
colnames(smarks) <- 
  c("Physics","Chemistry","Mathematics", "Biology","History")
smarks
result <- vector("numeric",length=nrow(smarks))
for(row in 1:nrow(smarks)){
  sum <- 0
  for(column in 1:ncol(smarks)){
    sum <- sum + smarks[row,column]
  }
  result[row] <- sum
}
result


apply(smarks,1,sum)
apply(smarks,1,max)
apply(smarks,1,which.max)
colnames(smarks)[apply(smarks,1,which.max)]
apply(smarks,2,mean)
apply(smarks,2,max)
rownames(smarks)[apply(smarks,2,which.max)]
apply(smarks,1:2,function(x) x +2)