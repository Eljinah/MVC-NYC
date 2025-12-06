# 🗽 NYC Motor Vehicle Crash Data Analytics

## 🚀 Project Summary: Data-Driven Safety Insights

This project involved a comprehensive data engineering and analytics solution built on **Snowflake** to process and analyze over **2 million motor vehicle crash records** from the NYC Open Data platform.

The primary goal was to transform raw public data into actionable insights, identifying critical safety trends and high-risk areas across NYC boroughs. This project showcases end-to-end proficiency in **cloud data warehousing**, **ETL/ELT pipeline development**, **advanced SQL analytics**, and **secure data governance**.

---

## 📊 Key Findings & Business Impact

The analysis successfully identified several critical safety patterns, providing data-driven observations for urban planning and public safety initiatives:

* **Top High-Risk Boroughs:** Quantified the exact crash percentage contribution of each borough, highlighting areas for targeted safety improvements.
* **Peak Crash Times:** Determined that crashes are overwhelmingly concentrated during daylight hours, which is crucial for resource allocation and enforcement planning.
* **Vulnerable Populations:** Isolated and aggregated fatality statistics for specific vulnerable road users (Pedestrians, Cyclists, Motorists) to inform policy focused on reducing these specific casualties.
* **Safety Tracking:** Established yearly crash counts and casualty figures per borough to create a baseline for measuring the effectiveness of future safety initiatives.

---

## 🛠️ Technical Implementation

### 1. Data Pipeline & Architecture

* **Data Source:** NYC Open Data API.
* **Platform:** **Snowflake** was leveraged for highly performant, scalable storage and analytical querying of the 2M+ record dataset.
* **Ingestion:** Developed a data ingestion pipeline using **Python** and the **Snowflake CLI** to extract, stage, and load data files efficiently into the `MVC.CRASH.CRASHES` table.
* **Data Governance:** Implemented **Role-Based Access Control (RBAC)** within Snowflake to enforce secure access policies and maintain robust data governance.

### 2. Technology Stack

| Category | Tools Used | Purpose |
| :--- | :--- | :--- |
| **Data Warehouse** | **Snowflake** | Cloud-native data platform for storage and analytical querying. |
| **Analysis** | **SQL**, **Python** (Pandas, Seaborn) | Data transformation, trend identification, and visualization. |
| **DevOps** | **Git/GitHub**, **VSCode** | Version control and code management. |
| **Ingestion** | **Snowflake CLI** | Command-line tool for stage and bulk data loading operations. |

---

## 🔎 Analytical Queries Reference

The detailed SQL code used to generate the insights above is stored in the **mvc.sql** file

| Query ID | Objective | Description 
| :--- | :--- | :--- 
| **Q1** | Borough Crash Percentage | Calculates the proportional contribution of crashes per borough using a window function. 
| **Q2** | Peak Time Analysis | Categorizes crashes into Day/Night based on crash time for peak period identification. 
| **Q3** | Total Person Casualties | Aggregates the total number of persons injured and killed per borough.
| **Q4** | Yearly Crash Trend | Finds the number of crashes occurring in each year to track historical patterns. 
| **Q6** | Fatalities by Victim Type | Compares fatalities across pedestrians, motorists, and cyclists in each borough.


