# -----------------------------
# Exercise 1: Two Dice Rolled
# -----------------------------
cat("Exercise 1: Two Dice Rolled\n")
outcomes1 <- expand.grid(1:6, 1:6)
sums1 <- rowSums(outcomes1)

p_exact_10 <- mean(sums1 == 10)
p_atleast_10 <- mean(sums1 >= 10)
p_conditional <- mean(sums1 == 10 & sums1 >= 10) / p_atleast_10

cat("P(sum = 10):", p_exact_10, "\n")
cat("P(sum ≥ 10):", p_atleast_10, "\n")
cat("P(sum = 10 | sum ≥ 10):", p_conditional, "\n\n")

# --------------------------------------
# Exercise 2: Drawing Slips from a Hat
# --------------------------------------
cat("Exercise 2: Drawing Slips from a Hat\n")
outcomes2 <- combn(1:6, 2)
sums2 <- colSums(outcomes2)

p_sum_10 <- mean(sums2 == 10)
p_sum_atleast_10 <- mean(sums2 >= 10)
p_sum_10_given_10plus <- p_sum_10 / p_sum_atleast_10

cat("P(sum = 10):", p_sum_10, "\n")
cat("P(sum ≥ 10):", p_sum_atleast_10, "\n")
cat("P(sum = 10 | sum ≥ 10):", p_sum_10_given_10plus, "\n\n")

# -----------------------------------
# Exercise 3: One Die is Twice the Other
# -----------------------------------
cat("Exercise 3: One Die is Twice the Other\n")
outcomes3 <- expand.grid(1:6, 1:6)
p_twice <- mean(outcomes3$Var1 == 2 * outcomes3$Var2 | outcomes3$Var2 == 2 * outcomes3$Var1)
cat("P(one die is twice the other):", p_twice, "\n\n")

# -----------------------------
# Exercise 4: Difference of Dice
# -----------------------------
cat("Exercise 4: Difference of Dice\n")
diffs <- abs(outcomes3$Var1 - outcomes3$Var2)
p_diff0 <- mean(diffs == 0)
p_diff4 <- mean(diffs == 4)
cat("P(diff = 0):", p_diff0, "\n")
cat("P(diff = 4):", p_diff4, "\n\n")

# -----------------------------
# Exercise 5: Events A, B, C, D
# -----------------------------
cat("Exercise 5: Events A, B, C, D\n")
outcomes5 <- expand.grid(white = 1:6, red = 1:6)

A <- outcomes5$white + outcomes5$red == 7
B <- outcomes5$white %% 2 == 1
C <- outcomes5$red > outcomes5$white
D <- outcomes5$white == outcomes5$red

intersect_AB <- A & B
cat("Are A and B disjoint?", all(!intersect_AB), "\n")

indep_AB <- mean(A & B) == mean(A) * mean(B)
cat("Are A and B independent?", indep_AB, "\n")


