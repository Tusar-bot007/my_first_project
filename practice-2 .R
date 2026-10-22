# Grade Checker

score <- 85

if (score >= 80) {
  grade <- "A+"
} else if (score >= 70) {
  grade <- "A"
} else if (score >= 60) {
  grade <- "B"
} else {
  grade <- "F"
}

cat("Score:", score, "\n")
cat("Grade:", grade, "\n")