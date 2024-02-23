# Humza Humayun - HW 4 - R Basics - DATA-3421
my_vector<-c(1,2,3,4,5) #Q1
#Q2:
rep(my_vector,1)
rep(my_vector,2)
rep(my_vector,3)
#Q3:
seq_vector<-seq(5,15,2)
seq_vector
#Q4:
random_vector<-rnorm(10,mean=0,sd=1)
random_vector
#Q5:
empty_vector<-numeric(0)
#Q6:
vect_6<-c(10,20,30)
names(vect_6)<-c('First','Second','Third')
#Q7:
x <- c(1, 3, 5, 7, 9)
filtered_x<-x[x>4]
#Q8:
x <- c(2, 4, 6, 8)
sum_x<-sum(x)
prod_x<-prod(x)
#Q9:
a <- c(1, 2, 3)
b <- c(4, 5, 6)
sum_ab <- a + b
diff_ab <- a - b
mult_ab <- a * b
#Q10:
x <- c(1, 2, 3, 4, 5)
y <- c(5, 4, 3, 2, 1)
xy_corr<-cor(x,y)
#Q11:
m<- matrix(1:9, nrow = 3,byrow = TRUE)
m
#Q12:
rownames(m) <- c("Row1", "Row2", "Row3" )
colnames(m) <- c("Col1", "Col2", "Col3")
m
#Q13:
second_row <- m[2, ]
#Q14:
m<-cbind(m, c(10, 11, 12))
m
m<-m[-2, ]
m
#Q15:
col_sums <- apply(m, 2, sum)
#Q16:
A <- matrix(1:4, nrow=2)
B <- matrix(rep(2, 4), nrow=2)
sum_AB <- A + B
prod_AB <- A %*% B
#Q17:
z <- c(1, NA, 3, NA, 5)
z_2<-z
z_2[is.na(z)] <- mean(z, na.rm = TRUE)
#Q18:
M <- matrix(1:9, nrow=3)
m_2 <- M[M > 5]
m_2
#Q19:
M[M > 5] <- 0
M
