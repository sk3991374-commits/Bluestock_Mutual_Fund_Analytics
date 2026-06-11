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
## Day 4 — Performance Analytics & Risk Modeling

**Tasks Completed:**
- Computed core risk-adjusted metrics (**Sharpe Ratio, Sortino Ratio**).
- Analyzed active management performance using **Alpha** and **Beta** against NIFTY100.
- Implemented **Tracking Error** analysis for benchmarking.
- Generated visual comparisons between high-growth equity funds and defensive debt benchmarks.

**Deliverables:**
- `Performance_Analytics.ipynb` (Full code and logic).
- `performance_metrics.csv` (Detailed Scorecard).
### Day 5 — Power BI Dashboard Development
* **Data Modeling:** Connected and validated 8 tables in Power BI; established relationships using `amfi_code` and `date`.
* **Dashboard Design (4 Pages):**
    * **Industry Overview:** KPI cards (AUM, SIP Inflows, Folios, Schemes) and growth trend charts.
    * **Fund Performance:** Risk-vs-Return scatter plots and dynamic scorecards with drill-through functionality.
    * **Investor Analytics:** Demographic and geographic transaction insights (SIP/Lumpsum).
    * **SIP & Market Trends:** Correlation analysis (SIP Inflows vs Nifty 50) and category heatmaps.
* **Branding:** Applied Bluestock colour theme, custom tooltips, and interactivity.
* **Deliverables:** `bluestock_mf_dashboard.pbix`, `Dashboard.pdf`, and 4 page-level PNG screenshots.
