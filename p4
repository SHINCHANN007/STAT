mat <- matrix(c(2,1,1, 1,2,1, 1,1,2),nrow = 3,byrow = TRUE)
print(mat)

tmat <- t(mat)
print(tmat)

dmat <- det(mat)

print(paste("Determinant :",dmat))

if(dmat!=0){
  invd <-solve(mat)
  print("Inverse :")
  print(invd)
}

#dataframe

stud <- data.frame(
  Name= c('lala','mala','kala','sala'),
  age= c(21,22,32,12),
  marks = c(99,98,97,67)
)
print(stud)

head(stud,1)
