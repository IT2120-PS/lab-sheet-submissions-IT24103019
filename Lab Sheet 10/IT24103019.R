setwd(C:\\Users\\USER\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\2Y 1S\\PS\\Labs\\Lab 10)

#Question 1
#Null Hypothesis (H0):
#Customers choose snacks A, B, C, and D equally ? each snack has the same chance of being chosen.

#Alternative Hypothesis (H1):
#Customers do not choose all snacks equally ? at least one snack is more or less popular than the others.

#Question2
# Observed data (number of purchases)
observed <- c(120, 95, 85, 100)

# Expected probabilities (equal probability for all snacks)
expected_prob <- rep(0.25, 4)

# Total number of purchases
total_purchases <- sum(observed)

# Expected counts for each snack (total purchases * 0.25 for each)
expected <- expected_prob * total_purchases

# Perform the chi-squared test
chisq_result <- chisq.test(observed, p = expected_prob)

# Output the chi-squared test result
chisq_result
