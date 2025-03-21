data <- read.table("nerve.dat.txt", header = FALSE, sep = "\t")
single_column <- as.vector(t(data))
single_column <- na.omit(single_column)

ecdf_func <- ecdf(single_column)
summary(ecdf_func)

plot(ecdf_func, 
     main = "Empirical Cumulative Distribution Function", 
     xlab = "Value", 
     ylab = "Cumulative Probability",
     col = "blue", 
     lwd = 2)

quantiles <- quantile(single_column, probs = c(0, 0.25, 0.5, 0.75, 1))
print(quantiles)
