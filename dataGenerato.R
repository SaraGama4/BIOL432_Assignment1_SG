

# A vector with a set of 100 species names, 
# randomly selected from a vector of 5 species names of your choosing.

species <- c("Pseudacris maculata", 
             "Hyla chrysoscelis", 
             "Hyla versicolor",
             "Acris crepitans",
             "Pseudacris regilla")

random_species <- sample(species, size = 100, replace = TRUE)

print(random_species)

# A vector of 100 values for Limb_width, 
# randomly selected using a distribution of your choice that 
# makes sense for the width of limbs (e.g. no negative or zero values).


# Set parameters for the normal distribution 
mean_width <- 1.5   # Mean of limb width
sd_width <- 1      # Standard deviation of limb width

# Generate 100 random values from a normal distribution, truncating negative values
limb_width <- abs(rnorm(100, mean = mean_width, sd = sd_width))

# Print the resulting vector
print(limb_width)

# A vector of 100 values for Limb_length, again
# randomly selected from a distribution of your choosing, 
# but the numbers must make sense.


# Set parameters for the normal distribution 
mean_length <- 6   # Mean of limb width
sd_length <- 1      # Standard deviation of limb width

# Generate 100 random values from a normal distribution, truncating negative values
limb_length <- abs(rnorm(100, mean = mean_length, sd = sd_length))

# Print the resulting vector
print(limb_length)

# A vector of 100 values for Observer, 
# randomly selected from a vector of 3 names (you can use any names you like).

observer <- c("Modernism", "Futurism", "Minimalism")

random_observer <- sample(observer, size = 100, replace = TRUE)


#Combine all of the vectors into a data.frame or tibble object 
# and export to a CSV file called measurements.csv

measurements_df <- data.frame(random_species,limb_width, limb_length, random_observer)

# Export the data frame to a CSV file called 'measurements.csv'
write.csv(measurements_df, file = "measurements.csv", row.names = FALSE)

# Print the data frame to verify
print(measurements_df)










