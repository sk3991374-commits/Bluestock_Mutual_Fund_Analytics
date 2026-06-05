# Bluestock_Mutual_Fund_Analytics
Mutual Fund Analytics Capstone Project for Bluestock Fintech Business Analyst Internship.
## Day 1 — Project Setup & Data Ingestion (ETL)

### Tasks Completed:
- **Environment Setup:** Successfully created the GitHub repository to manage and track the project lifecycle.
- **Data Identification:** Accessed the production datasets (Mutual Fund Schemes, NAV details, and historical data) from the Bluestock portal.
- **Project Structure:** Organized the workspace for the upcoming Data Cleaning and SQL Database Design phases.

### Tools Used:
- GitHub (Version Control & Documentation)
- Google Sheets / Excel (Initial Data Inspection)
## Day 2 — Data Cleaning + SQL Database Design

### Tasks Completed:
- **Data Cleaning:** Cleaned the raw Mutual Fund datasets (handled missing values, removed duplicate records, and standardized date formats) using Google Sheets/Excel.
- **SQL Database Design:** Planned the database schema and created an Entity-Relationship (ER) structure.
  - Defined `Scheme_Code` as the Primary Key for the Mutual Fund Schemes table.
  - Established a Foreign Key relationship with the Daily NAV table to connect performance data.

### Tools Used:
- Google Sheets / MS Excel (Data Cleaning)
- GitHub (Documentation)
## Day 3 — Exploratory Data Analysis (EDA) & Statistical Insights

### Tasks Completed:
* **Programmatic Data Ingestion:** Successfully loaded the cleaned multi-asset dataset comprising 8,050 historical logs into Python utilizing optimized operational schemas.
* **Descriptive Statistical Modeling:** Computed critical baseline metrics including Mean, Median, and Standard Deviation ($\sigma$) across high-growth equity, mid-caps, and defensive debt benchmarks.
* **Advanced Portfolio Visualizations:** Generated structural charts to track core market cycles and asset size variances.

### Performance Visualizations:
1. **NAV Trend Analysis (2022-2026):** Captured the macroeconomic 2023 Bull Run and the structural June 2024 Market Correction phases using interactive line plots.
2. **Fund Valuation & Asset Distribution:** Vertical/horizontal bar mappings highlighting structural valuation caps, showing significant asset concentration within the `BSE_SMALLCAP` sector.
3. **Pearson Correlation Heatmap:** Formulated a full-scale inter-asset performance correlation matrix to quantify multi-asset diversification shields and asset insulation properties.

### Key Analytical Takeaways:
* **The High-Volatility Vehicle:** `BSE_SMALLCAP` records an exceptionally high structural valuation average, but carries an elevated risk premium with a Standard Deviation ($\sigma \approx 16,442.61$).
* **Systemic Market Integration:** Strong positive correlation matrices ($r > 0.90$) established between broad-market benchmarks (`NIFTY50`, `NIFTY500`, and `NIFTY_MIDCAP150`), moving in tight integration during macro liquidity expansions.
* **The Portfolio Cushion:** Debt instruments (`CRISIL_GILT` and `CRISIL_LIQUID`) validated their role as low-risk defensive anchors, displaying negligible volatility and stable valuation bands over the 4-year cycle.
import pandas as pd
import numpy as np
from scipy import stats
import plotly.express as px

# 1. Load Data
# File ka naam wahi rakha hai jo tumhare folder mein show ho raha tha
file_name = 'cleaned_merged_mutual_fund_data.xlsx'
df = pd.read_excel(file_name)

# Pivot table - columns check kar liye hain tumhare screenshots se
pivot_df = df.pivot_table(index='date', columns='index_name', values='close_value')

# 2. Daily Returns
daily_returns = pivot_df.pct_change().dropna()

# 3. Metrics Calculation
rf = 0.065 # Risk-free rate
benchmark = daily_returns['NIFTY100']

# Sharpe Ratio
sharpe_ratios = (daily_returns.mean() * 252 - rf) / (daily_returns.std() * np.sqrt(252))

# Alpha & Beta (using Linear Regression)
results = []
for col in daily_returns.columns:
    if col != 'NIFTY100':
        slope, intercept, _, _, _ = stats.linregress(benchmark, daily_returns[col].fillna(0))
        results.append({'Scheme': col, 'Alpha': intercept * 252, 'Beta': slope})
alpha_beta_df = pd.DataFrame(results).set_index('Scheme')

# Sortino Ratio
sortino_ratios = daily_returns.apply(lambda x: (x.mean()*252 - rf) / (x[x<0].std() * np.sqrt(252)))

# Tracking Error
tracking_errors = daily_returns.apply(lambda x: (x - benchmark).std() * np.sqrt(252))

# 4. Final Scorecard Construction
performance_scorecard = pd.DataFrame({
    'Sharpe Ratio': sharpe_ratios,
    'Alpha': alpha_beta_df['Alpha'],
    'Beta': alpha_beta_df['Beta'],
    'Sortino Ratio': sortino_ratios,
    'Tracking Error': tracking_errors
})

# Display Output
print("--- Day 4 Analytics Scorecard ---")
display(performance_scorecard)

# Export to CSV for GitHub
performance_scorecard.to_csv('performance_metrics.csv')

# 5. Visualization (Benchmark Comparison)
top_schemes = ['BSE_SMALLCAP', 'CRISIL_GILT', 'CRISIL_LIQUID', 'NIFTY50', 'NIFTY100']
fig = px.line(pivot_df[top_schemes], title="Fund Performance vs Nifty 100")
fig.show()
