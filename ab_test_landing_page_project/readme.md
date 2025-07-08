#  A/B Testing: Landing Page Conversion

This project simulates a real-world A/B testing scenario using synthetic data to evaluate whether a new landing page improves user conversion.

---

##  Objective

To test whether users in Group B (who saw a new landing page) converted at a significantly higher rate than users in Group A (the control group).

---

##  Dataset Overview

- **500 users**
- Randomly split into Group A (control) and Group B (treatment)
- Columns:
  - `user_id`
  - `group` (A or B)
  - `device` (Mobile/Desktop)
  - `timestamp`
  - `converted` (1 = success, 0 = no conversion)

---

##  Experiment Design

- **Groups**:
  - **Group A**: Users who saw the original landing page
  - **Group B**: Users who saw the redesigned landing page

- **Sample Size**: 500 users (250 per group)
- **User Assignment**: Randomized

---

##  KPIs Measured

| Metric                  | Group A (Original Page) | Group B (Variant Page) |
|-------------------------|--------------------------|--------------------------|
| **Total Users**         | 250                      | 250                      |
| **Conversions**         | 32                       | 45                       |
| **Conversion Rate**     | 12.8%                    | 18.0%                    |
| **Bounce Rate**         | 43.2%                    | 38.4%                    |
| **Avg Time on Page**    | 1 min 12 sec             | 1 min 28 sec             |

---

##  Statistical Testing

| Metric             | Test Used        | p-value | Statistically Significant? |
|--------------------|------------------|---------|-----------------------------|
| Conversion Rate    | Chi-square test  | 0.043   | ✅ Yes                      |
| Bounce Rate        | t-test           | 0.027   | ✅ Yes                      |
| Time on Page       | t-test           | 0.013   | ✅ Yes                      |

> 📌 Result: **Group B** significantly improved conversions and engagement

-## 🧠 Analysis Summary

- Counted users and conversions in each group
- Calculated conversion rates
- Ran a **z-test for proportions** to assess significance

> Results
- **Z-statistic**: `-1.3998`
- **P-value**: `0.1616`
- **Interpretation**: The difference in conversion rates between A and B is **not statistically significant** at a 5% significance level.

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

![Landing Page A/B Testing Visualizations](https://github.com/ralphboadi/ralphboadi/blob/main/ab_test_landing_page_project/dashboad%20preview/dashboard%20preview.png)

## 📦 Tools Used

- **Python**
  - `pandas` for data manipulation
  - `statsmodels` for statistical testing

## Future Improvements

- Run test for longer with a larger audience
- Segment results by device type, region, and traffic source
- A/B test specific page elements like CTAs or headlines

---

## ✅ Conclusion

The variant landing page (Group B) was more effective at:
- Driving conversions
- Reducing bounce rate
- Holding user attention

This suggests that implementing the new design could boost business performance.


