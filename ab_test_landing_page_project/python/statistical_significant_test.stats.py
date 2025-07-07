import pandas as pd
from statsmodels.stats.proportion import proportions_ztest

# Load the dataset 
df = pd.read_csv('C:/Users/Kweku/Dropbox/PC/Desktop/data analyst portfolio pratices and project/ab_test_landing_page_project/data/ab_test_synthetic_500_users.csv')


# Count conversions per group
conversions = df.groupby('group')['converted'].sum()
# Total users per group
sample_sizes = df['group'].value_counts()

# Ensure order: A, B
count = [conversions['A'], conversions['B']]
nobs = [sample_sizes['A'], sample_sizes['B']]

# Perform z-test
stat, pval = proportions_ztest(count, nobs)

# Print result
print(f"Z-statistic: {stat:.4f}")
print(f"P-value: {pval:.4f}")

# Interpret
if pval < 0.05:
    print("Result is statistically significant — reject the null hypothesis.")
else:
    print("Result is NOT statistically significant — fail to reject the null hypothesis.")


