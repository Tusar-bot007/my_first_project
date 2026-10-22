# Simple R Experiment Project
# Author: Your Name
# Date: Sys.Date()

# Load library
library(ggplot2)

# Reproducibility
set.seed(123)

# Create sample data
student_data <- data.frame(
  Student = paste("Student", 1:50),
  Score = round(rnorm(50, mean = 75, sd = 10))
)

# Basic statistics
avg_score <- mean(student_data$Score)
max_score <- max(student_data$Score)
min_score <- min(student_data$Score)

# Print results
cat("Average Score:", avg_score, "\n")
cat("Highest Score:", max_score, "\n")
cat("Lowest Score:", min_score, "\n")

# Create histogram
plot <- ggplot(student_data, aes(x = Score)) +
  geom_histogram(
    bins = 10,
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Student Scores",
    x = "Score",
    y = "Count"
  ) +
  theme_minimal()

# Display plot
print(plot)

# Save plot
ggsave("student_scores.png", plot, width = 8, height = 5)

# Save data
write.csv(student_data,
          "student_scores.csv",
          row.names = FALSE)

cat("\nFiles created successfully!\n")

