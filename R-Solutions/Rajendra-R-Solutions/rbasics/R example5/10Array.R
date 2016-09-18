my.array <- array(1:24, dim = c(3, 4, 2))
my.array

c1.spmarks <- c(70L, 75L, 80L, 85L)
c1.scmarks <- c(60L, 70L, 85L, 70L)
c1.smarks <-cbind(c1.spmarks , c1.scmarks)
c1.smarks

c2.spmarks <- c( 71L , 76L , 81L,  86L)
c2.scmarks <- c(61L, 71L, 86L, 71L)
c2.smarks <-cbind(c2.spmarks 
                             , c2.scmarks)

c1.smarks
c2.smarks


smarks <- array(c(c1.smarks,c2.smarks), dim=c(4,2,2))
smarks
smarks[2,2,2] #Row number, column number, sheet number
smarks[1:3,2,]

