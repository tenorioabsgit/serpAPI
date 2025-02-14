# Load required libraries
library(httr)
library(jsonlite)
library(dplyr)
library(tidyr)

# Define the API key and parameters
api_key <- ""
params <- list(
  engine = "google_trends",
  q = "Globo, Natura, Ambev",
  geo = "BR",
  date = "2024-05-20T14 2024-05-20T18",
  tz = "420",
  data_type = "RELATED_TOPICS",
  api_key = api_key
)

# Make the API request
response <- GET("https://serpapi.com/search", query = params)

# Parse the response
results <- fromJSON(content(response, "text"))

# Extract the interest over time data
interest_over_time <- results$interest_over_time

# Convert to data frame
df <- as.data.frame(interest_over_time[1])

# Unnest the list column into separate columns
df_unnested <- df %>%
  unnest(cols = c("timeline_data.values"))

# Print the transformed data frame
print(df_unnested)

write.csv(df_unnested, "trends_globo_por_minuto.csv")
writexl::write_xlsx(df_unnested, "trends_globo_por_minuto.xslx")
  