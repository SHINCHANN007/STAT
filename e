# ===============================
# 1️⃣ Data
# ===============================
x <- c(5, 7, 9, 10, 12, 15, 7, 9, 10)
y <- c(10, 15, 20, 25, 30, 35, 20, 25, 30)

# ===============================
# 2️⃣ Function to calculate mode
# ===============================
get_mode <- function(v) {
  uniq <- unique(v)
  uniq[which.max(tabulate(match(v, uniq)))]
}

# ===============================
# 3️⃣ Summary Statistics
# ===============================
cat("X: Mean =", mean(x), ", Median =", median(x), ", Mode =", get_mode(x), "\n")
cat("Y: Mean =", mean(y), ", Median =", median(y), ", Mode =", get_mode(y), "\n")

# ===============================
# 4️⃣ Boxplot (X and Y together)
# ===============================
boxplot(x, y, names=c("X","Y"), col=c("lightblue","lightgreen"), main="Boxplot of X and Y")

# ===============================
# 5️⃣ Line Plot (X and Y together)
# ===============================
plot(x, type="o", col="blue", lwd=2, ylim=range(c(x,y)), xlab="Index", ylab="Values", main="Line Plot of X and Y")
lines(y, type="o", col="green", lwd=2)
legend("topleft", legend=c("X","Y"), col=c("blue","green"), lwd=2, pch=1)

# ===============================
# 6️⃣ Histogram (X and Y together with transparency)
# ===============================
hist(x, breaks=5, col=rgb(0,0,1,0.5), xlim=range(c(x,y)), ylim=c(0,5),
     main="Histogram of X and Y", xlab="Values", ylab="Frequency")
hist(y, breaks=5, col=rgb(0,1,0,0.5), add=TRUE)
legend("topright", legend=c("X","Y"), fill=c(rgb(0,0,1,0.5), rgb(0,1,0,0.5)))
