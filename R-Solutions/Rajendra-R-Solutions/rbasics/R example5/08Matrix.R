spmarks <- c( 70L , 75L , 80L,  85L)
scmarks <- c(60L, 70L, 85L, 70L)
smarks <-rbind(spmarks , scmarks)
smarks
smarks <-cbind(spmarks , scmarks)
smarks
rownames(smarks) <- c("Raj","Rahul","Priya","Poonam")
smarks
str(smarks)
smarks <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=2,nrow=4)
smarks
smarks <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=4,nrow=2
                        ,byrow=TRUE)
smarks

smarks <- matrix(c(70L, 75L, 80L, 85L, 60L, 70L, 85L, 70L), ncol = 4, nrow = 2, byrow = FALSE)
smarks