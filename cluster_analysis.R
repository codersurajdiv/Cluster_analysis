#Load the required libraries
library(tidyverse)
library(cluster)

#Read the dataset
data <- read.csv("Credit Card Customer Data.csv")
summary(data)

sum(is.null(data))
#No null values

# Exclude Sl_No and Customer Key columns (by index)
columns_to_exclude <- c(1, 2)
data_processed <- data[, -columns_to_exclude]


# Perform k-means clustering with varying number of clusters
k_values <- 1:10

# Calculate sum of squared distances for each value of k
sse <- sapply(k_values, function(k) {
  kmeans_model <- kmeans(data_processed, centers = k)
  sum(kmeans_model$withinss)
})

# Plot the elbow curve
plot(k_values, sse, type = "b", pch = 19, frame = FALSE,
     xlab = "Number of Clusters (k)", ylab = "Sum of Squared Distances",
     main = "Elbow Method for Optimal k")


#Based on the plot, we can see that at k=4 the decrease in sum of squared distances starts to level off.
# Perform k-means clustering with k = 4
k <- 4

kmeans_model <- kmeans(data_processed, centers = k)

# Access the cluster assignments
cluster_assignments <- kmeans_model$cluster

# Access the cluster centers
cluster_centers <- kmeans_model$centers


# Add the cluster assignments to the processed dataset
data_processed$Cluster <- cluster_assignments

# Analyze the distribution of data points in each cluster
table(cluster_assignments)


# Calculate summary statistics for each cluster
library(dplyr)

summary_stats <- data_processed %>%
  group_by(Cluster) %>%
  summarize(
    Avg_Credit_Limit = mean(Avg_Credit_Limit),
    Avg_No_of_Cards = mean(Total_Credit_Cards),
    Avg_Visits_Bank = mean(Total_visits_bank)
  )

print(summary_stats)
