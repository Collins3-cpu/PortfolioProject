📁 Project Files Overview
1. 🔍 Data Cleaning in SQL
File: Data Cleaning in SQL.sql
Dataset: National Housing (PortfolioProject.dbo.[National Housing])

Key Tasks:

Convert SaleDate to a proper ConvertedDate format.

Fill in missing PropertyAddress using ParcelID matches.

Split PropertyAddress and OwnerAddress into structured columns.

Standardize SoldAsVacant values from 'Y/N' to 'Yes/No'.

Remove duplicates based on key columns.

Drop unused columns (OwnerAddress, PropertyAddress, SaleDate, TaxDistrict).

2. 🦠 COVID Portfolio Project
File: COVID Portfolio Project.sql
Datasets: CovidDeaths$ and CovidVaccinations$

Analyses Performed:

Kenya: Death rate, infection percentage.

Global: Highest infection rates, total deaths by continent and country.

Vaccination trends using CTEs.

Prebuilt views for visualization:

deaths_vs_cases, cases_vs_population

countries_infection_rate, countries_death_count

Deaths_by_Continents, global_numbers

3. 🔗 Data Correlation in Python
File: Data Correlation in Python.ipynb
Dataset: movies.csv

Analysis Includes:

Load and inspect data with pandas.

Use of numpy, seaborn, matplotlib for visualizations.

Compute and plot correlation matrix (Pearson).

Key Insights:

budget vs gross: 0.74

votes vs gross: 0.63

Visuals: Heatmaps, scatter plots.

4. 📊 Power BI Data Visualization
File: Power Bi Data Visualization..pbip

Description:
A Power BI report file showcasing interactive data dashboards (dataset referenced in .Report file). Auto-recovery enabled.

5. 🧾 Embu County Business Permit Revenue Analysis
File: Embu County Business Permit Revenue Analysis.ipynb

Objectives:

Analyze business permit revenues over time.

Identify top sectors and regional trends.

Deliver policy-relevant insights via visualizations.

Tools Used:

Python (pandas, numpy)

Visuals with matplotlib, seaborn

Interactive analysis via Jupyter Notebook

Visual Outputs:

Revenue trends by sector and region

Growth comparison charts

Heatmaps of permit distribution

Potential Applications:

Support evidence-based policy on licensing

Guide investment and planning decisions

6. 🚴‍♂️ Bike Sales Analysis Project
File: Excel Project - Colins.xlsx

Excel Sheets Breakdown:

bike_buyers: Raw data (demographics, lifestyle, bike purchases)

Work sheet: Cleaned data with age brackets (Adolescent, Middle Aged, Old)

Pivot Table: Insights including:

Income vs bike purchases by gender

Commute distance and purchase rate

Age group breakdown of buyers

Dashboard: Placeholder for visual representation (charts to be created)

🚀 How to Use This Repository
✅ SQL Scripts
Requirements: SQL Server or compatible DBMS with PortfolioProject schema

How to Run: Open in SSMS or Azure Data Studio and execute script

Output: Cleaned datasets, analytical views for reporting

✅ Python Notebook
Requirements: Python 3.12+, Jupyter Notebook, pandas, numpy, matplotlib, seaborn

How to Run: Open .ipynb in Jupyter and run cell-by-cell

Output: Correlation matrices, insights, charts

✅ Power BI Report
Requirements: Power BI Desktop

How to Run: Open .pbip file to interact with dashboards

Output: Visual exploration of dataset

✅ Excel Project
Requirements: Microsoft Excel

How to Use: Explore pivot tables and build visual dashboard

Output: Summary insights on buyer behavior and demographics

📬 Contact
Feel free to reach out for collaborations, feedback, or project discussions.
