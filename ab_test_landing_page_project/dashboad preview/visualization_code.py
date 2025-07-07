import pandas as pd
import matplotlib.pyplot as plt

# Load the dataset
df = pd.read_csv('C:/Users/Kweku/Dropbox/PC/Desktop/data analyst portfolio pratices and project/ab_test_landing_page_project/data/ab_test_synthetic_500_users.csv')
# Calculate conversion rates
conversion_rate_A = df[df['group'] == 'A']['converted'].mean()
conversion_rate_B = df[df['group'] == 'B']['converted'].mean()

# Bar chart
groups = ['Group A', 'Group B']
rates = [conversion_rate_A, conversion_rate_B]

plt.figure(figsize=(6, 4))
bars = plt.bar(groups, rates, color=['steelblue', 'orange'])
plt.title('Conversion Rate by Group')
plt.ylabel('Conversion Rate')
plt.ylim(0, max(rates) + 0.05)

# Add percentage labels above bars
for bar in bars:
    height = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2.0, height + 0.005, f'{height:.2%}', ha='center', va='bottom')

plt.tight_layout()
plt.savefig("conversion_rates.png")  # Saves the chart as an image
plt.show()
