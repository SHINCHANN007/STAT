#==============================
# Normal Distribution
#==============================

# Example: generate 10 random numbers from N(1,1)
set.seed(123)  # for reproducibility
rnorm_example <- rnorm(10, 1)
print(rnorm_example)

# Standard normal distribution problems

# P1: Probability X is between 49 and 70 → use 'between'
p1 <- pnorm(70, 50, 15) - pnorm(49, 50, 15)

# P2: Probability X > 100 → use 'greater than'
p2 <- pnorm(100, 90, 10, lower.tail = FALSE)

# P3: Probability X < 39 → use 'less than'
p3 <- pnorm(39, 30, 4)

# P4: Probability X > 21 → use 'greater than'
p4 <- pnorm(21, 30, 4, lower.tail = FALSE)

# P5: Probability 30 < X < 34 → use 'between'
p5 <- pnorm(34, 30, 4) - pnorm(30, 30, 4, lower.tail = FALSE)

print(c(p1, p2, p3, p4, p5))

# Helper functions for easy probability calculation
pnorm_less <- function(x, mean, sd) pnorm(x, mean, sd)               # P(X <= x)
pnorm_greater <- function(x, mean, sd) 1 - pnorm(x, mean, sd)        # P(X > x)
pnorm_between <- function(x1, x2, mean, sd) pnorm(x2, mean, sd) - pnorm(x1, mean, sd) # P(x1 < X < x2)

# Example calculations using helper functions
mu_n1 <- 30; sd_n1 <- 4
P_x_less_40 <- pnorm_less(40, mu_n1, sd_n1)       # less than
P_x_greater_21 <- pnorm_greater(21, mu_n1, sd_n1) # greater than
P_between_30_35 <- pnorm_between(30, 35, mu_n1, sd_n1) # between

mu_n2 <- 90; sd_n2 <- 10
P_speed_gt_100 <- pnorm_greater(100, mu_n2, sd_n2)       # greater than

mu_n3 <- 50; sd_n3 <- 15
P_battery_50_70 <- pnorm_between(50, 70, mu_n3, sd_n3)   # between

print(c(P_x_less_40, P_x_greater_21, P_between_30_35, P_speed_gt_100, P_battery_50_70))

#==============================
# Binomial Distribution PMF
#==============================

# Full form: X ~ Bin(n, p)
n <- 10   # number of trials
p <- 0.5  # probability of success
k_bin <- 0:n

# PMF: probability of exactly k successes
pmf_bin <- dbinom(k_bin, size = n, prob = p)

# Plot Binomial PMF
plot(k_bin, pmf_bin, type="h", lwd=2, col="blue",
     main="Binomial Distribution PMF (n=10, p=0.5)",
     xlab="Number of Successes (k)", ylab="Probability")
points(k_bin, pmf_bin, pch=16, col="red")

#==============================
# Poisson Distribution PMF
#==============================

# Full form: X ~ Poisson(lambda)
lambda <- 3  # average number of events per interval
k_pois <- 0:10

# PMF: probability of exactly k events
pmf_pois <- dpois(k_pois, lambda = lambda)

# Plot Poisson PMF
plot(k_pois, pmf_pois, type="h", lwd=2, col="green",
     main="Poisson Distribution PMF (lambda=3)",
     xlab="Number of Events (k)", ylab="Probability")
points(k_pois, pmf_pois, pch=16, col="orange")
