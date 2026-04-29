import pandas as pd

df = pd.read_csv("superstore.csv", encoding="latin1")

# Check missing values
print(df.isnull().sum())

# Drop missing values
df = df.dropna()

# Convert date column
df['Order Date'] = pd.to_datetime(df['Order Date'])

# Save cleaned data
df.to_csv("cleaned_data.csv", index=False)

print("Data cleaned successfully ✅")