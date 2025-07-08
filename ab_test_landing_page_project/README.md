#  A/B Testing: Landing Page Conversion

This project simulates a real-world A/B testing scenario using synthetic data to evaluate whether a new landing page improves user conversion.

---

##  Objective

To test whether users in Group B (who saw a new landing page) converted at a significantly higher rate than users in Group A (the control group).

---

##  Dataset Overview

- **501 users**
- Randomly split into Group A (control) and Group B (treatment)
- Columns:
  - `user_id`
  - `group` (A or B)
  - `device` (Mobile/Desktop)
  - `timestamp`
  - `converted` (1 = success, 0 = no conversion)

---

## 🧪 Experiment Design

- **Group A**: Original landing page
- **Group B**: New landing page
- **Sample Size**: 501 users (245 in Group A, 256 in Group B)
- **Assignment Method**: Randomized

---

## 📈 KPIs Measured

| Metric              | Group A (Original Page) | Group B (Variant Page) |
|---------------------|--------------------------|--------------------------|
| **Total Users (n)** | 245                      | 256                      |
| **Conversions (x)** | 22                       | 33                       |
| **Conversion Rate** | 8.98%                    | 12.89%                   |

---

## 📉 Statistical Testing

| Metric           | Test Used      | p-value | Statistically Significant? |
|------------------|----------------|---------|-----------------------------|
| Conversion Rate  | z-test for proportions | 0.1616  |  No                  |

---

## 🧠 Analysis Summary

- Counted users and conversions per group
- Calculated conversion rates
- Ran a **z-test for proportions** to assess significance

### 📌 Result:
- **Z-statistic**: -1.3998  
- **P-value**: 0.1616  
- **Conclusion**: Since the p-value is 0.168 means there's a 16.8% chance the difference is due to random variation. 

---

## 🧪 Hypotheses

- **Null Hypothesis (H₀):**
- The conversion rates of Group A and Group are equal.
    - Symbolically: pA = pB

- **Alternative Hypothesis (H₁):**
- The conversion rates of Group A and Group B are not equal
    - Symbolically: pA ≠ pB

## What This Means
- p-value was 0.168, so:
    - We fail to reject the null hypothesis
    - Statistically, we can't say the conversion rates are different with strong confidence
      
---

## 🧾 Interpretation

While Group B had a higher observed conversion rate, the statistical test indicates this result could be due to **random chance**. More data or a longer testing period would help clarify whether the new design truly performs better.

---

## 📊 Visualizations

![Landing Page A/B Testing Visualizations](https://github.com/ralphboadi/ralphboadi/blob/main/ab_test_landing_page_project/dashboad%20preview/dashboard%20preview.png)

---

## 🛠 Tools Used

- **Python**
  - `pandas` for data manipulation
  - `statsmodels` for statistical testing

---

## 🔧 Future Improvements

- Increase sample size
- Segment users by device type or traffic source
- Run the test for a longer time period
- A/B test specific page elements (e.g., CTA buttons, headlines)

---

## ✅ Final Conclusion

The new landing page showed **a higher conversion rate**, but the difference was **not statistically significant**.  
At this stage, we **cannot confidently recommend** deploying the new design without further testing.

