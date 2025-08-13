import pandas as pd

# Load the dataset
df = pd.read_csv("datasets/epl.csv")

# Step 1: Clean the "Qualification or relegation" column by removing bracketed text
df["Qualification or relegation"] = df["Qualification or relegation"].str.replace(r'\[.+]', "",regex=True).str.strip()

# Step 2: Save the cleaned DataFrame to a new CSV file
df.to_csv("datasets/epl_cleaned.csv")
print("Saved Successfully")