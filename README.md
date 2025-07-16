
**Data Analysis Portfolio**
This repository contains SQL scripts for data cleaning and analysis projects, focusing on real-world datasets. Below is an overview of the included files and their purposes.
Files
1. Data Cleaning in SQL.sql
This script demonstrates data cleaning techniques using SQL on a National Housing dataset (PortfolioProject.dbo.[National Housing]). The operations performed include:
•	Converting Sale Date: Converts the SaleDate column to a proper date format and stores it in a new ConvertedDate column.
•	Populating Missing Property Addresses: Fills in missing PropertyAddress values using matching ParcelID records.
•	Splitting Address Fields: Breaks down PropertyAddress and OwnerAddress into individual columns (PropertySplitAddress, PropertySplitCity, OwnerSplitAddress, OwnerSplitCity, OwnerSplitState) for better usability.
•	Standardizing Values: Converts 'Y' and 'N' in the SoldAsVacant column to 'Yes' and 'No'.
•	Removing Duplicates: Identifies and deletes duplicate records based on ParcelID, PropertyAddress, SalePrice, SaleDate, and LegalReference.
•	Dropping Unused Columns: Removes obsolete columns (OwnerAddress, PropertyAddress, SaleDate, TaxDistrict).
2. COVID Portfolio Project.sql
This script performs exploratory data analysis on COVID-19 datasets (CovidDeaths$ and CovidVaccinations$). Key analyses include:
•	Total Deaths vs. Total Cases: Calculates the death percentage for Kenya.
•	Total Cases vs. Population: Computes the infection percentage for Kenya.
•	Highest Infection Rates: Identifies countries with the highest infection rates relative to population.
•	Highest Death Counts: Shows countries and continents with the highest death counts.
•	Global Numbers: Aggregates total cases, deaths, and death percentage globally.
•	Population vs. Vaccinations: Tracks rolling vaccination counts and calculates vaccination percentages using a CTE.
•	Views for Visualization: Creates SQL views (deaths_vs_cases, cases_vs_population, countries_infection_rate, countries_death_count, Deaths_by_Continents, global_numbers) for simplified data access and visualization.
Usage
•	Prerequisites: SQL Server or a compatible database system with the datasets loaded into the PortfolioProject schema.
•	Running the Scripts: Execute the SQL scripts in a SQL Server Management Studio (SSMS) or similar environment. Ensure the database and tables (National Housing, CovidDeaths$, CovidVaccinations$) are properly set up.
•	Output: The scripts generate cleaned data, analytical results, and views that can be used for reporting or visualization in tools like Power BI or Tableau.

3. Data Correlation in Python.ipynb
This Jupyter Notebook performs correlation analysis on a movie dataset (movies.csv) using Python. Key components include:
•	Data Loading: Imports the dataset using pandas and visualizes initial data with df.head().
•	Libraries Used: Utilizes pandas, numpy, seaborn, and matplotlib for data manipulation and visualization.
•	Correlation Analysis: Computes a Pearson correlation matrix for numeric columns and visualizes it with a heatmap.
•	Key Findings: Identifies high correlations between budget and gross (0.74) and votes and gross (0.63), indicating these factors strongly influence movie gross earnings.
•	Visualization: Includes a scatter plot of budget vs. gross revenue and a heatmap of the correlation matrix.
4. Power Bi Data Visualization..pbip
This Power BI project file (Power Bi Data Visualization..pbip) contains a report for visualizing data. The specific dataset and visualizations are defined in the associated report file (Power Bi Data Visualization..Report). The project is configured with auto-recovery enabled for reliability.
Usage
•	SQL Scripts:
o	Prerequisites: SQL Server or a compatible database system with the PortfolioProject schema and tables (National Housing, CovidDeaths$, CovidVaccinations$) set up.
o	Execution: Run the scripts in SQL Server Management Studio (SSMS) or a similar environment to clean and analyze data.
•	Python Notebook:
o	Prerequisites: Python 3.12.2, Jupyter Notebook, and required libraries (pandas, numpy, seaborn, matplotlib).
o	Execution: Run the notebook in Jupyter or a compatible IDE, ensuring movies.csv is in the working directory.
o	Output: Generates correlation matrices, a heatmap, and insights into movie gross earnings.
•	Power BI Project:
o	Prerequisites: Power BI Desktop.
o	Execution: Open the .pbip file in Power BI Desktop to view and interact with the report.
o	Output: Interactive visualizations based on the dataset used in the report.

5. Embu County Business Permit Revenue Analysis
This project presents a data analysis of business permit revenue for Embu County. The notebook explores revenue trends, permit issuance, and potential insights to support decision-making in local government and urban planning.

📁 Project Contents
Embu County Business Permit Revenue Analysis.ipynb:
A Jupyter Notebook that performs data cleaning, exploration, visualization, and interpretation of business permit revenue data from Embu County.

📊 Key Objectives
Analyze trends in business permit revenues over time.
Identify top-performing business sectors.
Explore seasonal or regional patterns.
Provide visual insights using graphs and charts.

Tools and Technologies
Python (Pandas, NumPy)
Matplotlib and Seaborn for data visualization
Jupyter Notebook for interactive analysis

📈 Sample Visuals and Insights
Revenue comparison by year and sector
Trend lines showing growth or decline
Heatmaps or bar plots of revenue contribution per ward/sub-county (if included)

Potential Uses
Inform policy on licensing fees
Identify growth sectors in Embu County
Support data-driven governance decisions

6. Bike Sales Analysis Project
This repository contains an Excel file (Excel Project - Colins.xlsx) that showcases data analysis on a bike buyers dataset. The project demonstrates data cleaning, aggregation, and visualization to uncover insights into bike purchasing behavior based on demographic and lifestyle factors.
File Overview: Excel Project - Colins.xlsx
The Excel file consists of four sheets, each serving a specific purpose in the analysis:
a.	bike_buyers: The raw dataset with 1000 records, including columns for ID, Marital Status, Gender, Income, Children, Education, Occupation, Home Owner, Cars, Commute Distance, Region, Age, and Purchased Bike. This sheet contains the original, unprocessed data.
b.	Work sheet: A cleaned version of the raw data, with an additional Age Bracket column categorizing ages into Adolescent, Middle Aged, and Old. Data cleaning steps include standardizing text fields and ensuring consistency across records.
c.	Pivot Table: Contains aggregated data summarizing key metrics:
o	Average income by Gender and Purchased Bike status, showing males who purchased bikes have a slightly higher average income ($60.1K) than females ($55.8K).
o	Count of bike purchases by Commute Distance, revealing that shorter commutes (0-1 Miles) correlate with higher purchase rates (200 Yes vs. 166 No).
o	Count of bike purchases by Age Bracket, highlighting Middle Aged individuals as the primary buyers (383 Yes out of 701 total).
d.	Dashboard: A placeholder sheet titled "Bike Sales Dashboard," intended for visualizing the analyzed data. While the sheet itself contains only the title, the pivot table insights can be used to create visualizations such as bar charts for income, stacked bars for commute distance, and pie charts for age brackets.
Key Insights
•	Middle Aged Dominance: Middle Aged individuals (ages 30-59) are the most likely to purchase bikes, with 383 out of 701 buying bikes, compared to Adolescents (39/110) and Older individuals (59/189).
•	Commute Distance Impact: Individuals with shorter commutes (0-1 Miles) are more likely to purchase bikes, suggesting bikes are popular for short-distance travel.
•	Regional Trends: North America shows the highest bike purchase rates among the regions (Europe, Pacific, North America).
•	Income Patterns: Males who purchase bikes have a higher average income than females, indicating potential income-related purchasing behavior.







