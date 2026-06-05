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
# Mutual Fund Performance Analytics Dashboard

## 🚀 Project Overview
This project is an end-to-end Financial Data Analytics pipeline built to evaluate the performance of various mutual fund schemes against the NIFTY100 benchmark. The project focuses on risk-adjusted returns, volatility analysis, and active management performance.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Scipy, Plotly, Matplotlib
- **Platform:** Google Colab
- **Version Control:** GitHub

## 📊 Key Metrics Calculated (Day 4)
I have implemented the following advanced financial metrics:
- **Sharpe Ratio:** Measures risk-adjusted returns.
- **Sortino Ratio:** Focuses on downside risk management.
- **Alpha:** Represents the value added by active fund management.
- **Beta:** Measures sensitivity to market volatility (NIFTY100).
- **Tracking Error:** Measures the deviation from the benchmark.

## 📈 Insights
- Identified top-performing schemes based on risk-adjusted metrics.
- Visualized the performance of various schemes against the market benchmark.
- Analyzed the correlation between portfolio sensitivity (Beta) and returns (Alpha).

## 📂 Project Structure
- `data/`: Contains the cleaned dataset.
- `notebooks/`: Contains the Jupyter notebook with EDA and Analytics code.
- `reports/`: Contains the final performance metrics scorecard.

## 🎓 Learning Outcomes
Through this project, I gained hands-on experience in:
1. Handling and cleaning complex time-series financial data.
2. Applying statistical methods to calculate investment performance.
3. Building professional financial dashboards for stakeholders.
