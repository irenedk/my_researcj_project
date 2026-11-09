# ==============================================================================
# Script: 03_penguin_regression.R
# Description: Linear regression and visualization using palmerpenguins
# Alignment: FAIR4RS / Open Science
# ==============================================================================

# 1. SETUP & DEPENDENCIES ----
# Ensure packages are installed: install.packages(c("palmerpenguins", "ggplot2", "dplyr"))
library(palmerpenguins)
library(ggplot2)
library(dplyr)

# 2. DATA LOADING & PROVENANCE ----
# Treating the package data as our 'raw' source
data("penguins")

# Clean data and save to processed folder
processed_data <- penguins %>%
  filter(!is.na(bill_length_mm), !is.na(body_mass_g))

write.csv(processed_data, "data/processed/cleaned_penguins.csv", row.names = FALSE)

# 3. ANALYSIS: LINEAR REGRESSION ----
# Modeling Body Mass based on Bill Length
penguin_model <- lm(body_mass_g ~ bill_length_mm, data = processed_data)

# Export statistical summary to reports folder
sink("outputs/reports/regression_results.txt")
print(summary(penguin_model))
sink()

# 4. VISUALIZATION ----
reg_plot <- ggplot(processed_data, aes(x = bill_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species), alpha = 0.7, size = 3) +
  geom_smooth(method = "lm", color = "black", se = TRUE) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(
    title = "Penguin Size Analysis: Bill Length vs. Body Mass",
    subtitle = "Linear regression across all species",
    x = "Bill Length (mm)",
    y = "Body Mass (g)",
    color = "Species",
    shape = "Species",
    caption = "Source: palmerpenguins R package"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")

# 5. FAIR EXPORT ----
# Save as PNG for web/GitHub and PDF for publication
ggsave("outputs/figures/fig-01-penguin-regression.png", plot = reg_plot, width = 10, height = 7, dpi = 300)
ggsave("outputs/figures/fig-01-penguin-regression.pdf", plot = reg_plot, width = 10, height = 7)

cat("Success: Statistical report and figures generated in 'outputs/' folder.\n")
