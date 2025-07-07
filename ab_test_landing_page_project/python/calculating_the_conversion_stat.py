import pandas as pd
# Calculating the conversion rate for an A/B test dataset

# Load the dataset
df = pd.read_csv('ab_test_synthetic_500_users.csv')

# Load the dataset
df = pd.read_csv('ab_test_synthetic_500_users.csv')

# User count per group
group_counts = df['group'].value_counts()
print("\nUser count per group:\n", group_counts)

# Total conversions per group
conversion_counts = df.groupby('group')['converted'].sum()
print("\nTotal conversions per group:\n", conversion_counts)

# Conversion rate per group
conversion_rates = df.groupby('group')['converted'].mean()
print("\nConversion rate per group:\n", conversion_rates)
