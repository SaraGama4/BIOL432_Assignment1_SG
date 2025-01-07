
library(dplyr)

# Read CSV file into a data frame
measurements_df <- read.csv("measurements.csv")

# Estimate limb volume using the formula for the volume of a cylinder
# Mutate function creates a new column
measurements_df <- measurements_df %>%
  mutate(Volume = pi * (limb_width / 2)^2 * limb_length)

# Export updated data frame to the same CSV file (overwriting it)
write.csv(measurements_df, "measurements.csv", row.names = FALSE)

print(measurements_df)


