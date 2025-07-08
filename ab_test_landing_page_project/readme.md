# 🧪 A/B Testing: Landing Page Conversion

This project simulates a real-world A/B testing scenario using synthetic data to evaluate whether a new landing page improves user conversion.

---

## 📌 Objective

To test whether users in Group B (who saw a new landing page) converted at a significantly higher rate than users in Group A (the control group).

---

## 🗃️ Dataset Overview

- **500 users**
- Randomly split into Group A (control) and Group B (treatment)
- Columns:
  - `user_id`
  - `group` (A or B)
  - `device` (Mobile/Desktop)
  - `timestamp`
  - `converted` (1 = success, 0 = no conversion)

---

## 🧠 Analysis Summary

- Counted users and conversions in each group
- Calculated conversion rates
- Ran a **z-test for proportions** to assess significance

### 🔬 Results

- **Z-statistic**: `-1.3998`
- **P-value**: `0.1616`
- ✅ **Interpretation**: The difference in conversion rates between A and B is **not statistically significant** at a 5% significance level.

## Hypothesis 

- **Null Hypothesis (H₀):**
There is no difference in conversion rates between users who saw the original landing page (Group A) and those who saw the new landing page (Group B).
𝑝𝐴 = 𝑝𝐵
​
- **Alternative Hypothesis (H₁):**
Group B has a different conversion rate than Group A.
𝑝𝐴 ≠ 𝑝𝐵

## What This Means
The difference we observed in conversions may be due to random chance rather than a true effect of the new design.
To confirm or deny a real difference, you may need:
- A larger sample size
- Segmentation by device type
- More time for data collection

---

## 📊 Visualizations

![Landing Page A/B Testing Visualizations](soccer_ab_testing_visualizations.png)

## 📦 Tools Used

- **Python**
  - `pandas` for data manipulation
  - `statsmodels` for statistical testing

---

## ✅ Next Steps

- Segment results by device type
- Increase sample size for higher statistical power
- Visualize conversion rate differences 

