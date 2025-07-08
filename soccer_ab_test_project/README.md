# ⚽ Soccer A/B Testing Analysis – Lightweight vs Standard Ball

This project explores how ball type affects player performance in a simulated football (soccer) setting. Using A/B testing techniques, we compare players using a **standard ball (Group A)** with those using a **lightweight ball (Group B)** to evaluate impact on passing, shooting, and scoring.

---

## 📌 Objective

To determine whether using a **lightweight football** improves match performance metrics such as:
- Pass accuracy
- Shots on target
- Goals scored
- Scoring conversion rate

---

## 🧪 Experiment Design

- **Groups**:
  - **Group A**: Players using the **standard ball**
  - **Group B**: Players using the **lightweight ball**

- **Participants**: 250 players (125 per group)  
- **Data collected**:
  - Pass attempts / pass completed
  - Shots / shots on target
  - Goals scored
  - Possession percentage
  - Match ID and date

---

## 📊 KPIs Measured

| Metric                  | Group A | Group B |
|-------------------------|---------|---------|
| Avg Pass Accuracy       | 73.1%   | 81.8%   |
| Avg Shots on Target     | 0.61    | 1.18    |
| Avg Goals               | 0.00    | 0.03    |
| Avg Possession (%)      | 49.6%   | 50.6%   |
| Scoring Conversion Rate | 0.0%    | 3.2%    |

---

## 📈 Statistical Testing

| Metric                 | Test           | p-value | Significant? |
|------------------------|----------------|---------|--------------|
| Pass Accuracy          | Independent t-test | < 0.001  |    Yes        |
| Shots on Target        | Independent t-test | < 0.001  |    Yes        |
| Goals Scored           | Independent t-test | 0.044    |     Yes        |
| Possession %           | Independent t-test | 0.183    |     No         |
| Scoring Conversion Rate| Chi-square test    | 0.130    |     No         |

> Result: The lightweight ball led to **statistically significant improvements** in pass accuracy, shots, and goals.

---

Visualizations

![Soccer A/B Testing Visualizations](soccer_ab_testing_visualizations.png)

---

## Tools Used

- Python (Pandas, NumPy)
- Seaborn & Matplotlib
- SciPy (t-tests & chi-square)
- Jupyter Notebook / VS Code

---

## ✅ Conclusion

The A/B test suggests that players using the **lightweight ball** performed significantly better in key metrics like:
- Pass accuracy
- Shots on target
- Goals scored

While scoring conversion rate didn’t reach statistical significance, the trend favors the new ball.


