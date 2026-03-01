# customer_behaviour_analysis

📊 HR Analytics: Employee Attrition Analysis
🔍 Project Overview

This project analyzes employee data from the HR Analytics dataset to uncover insights related to employee attrition, salary distribution, and workforce trends. The objective is to perform end-to-end data analysis — from data cleaning in Python to business intelligence using SQL and visualization tools.

The analysis helps HR teams make data-driven decisions to improve employee retention and organizational efficiency.

📁 Dataset Summary

Dataset: HR_Analytics.csv

Type: Structured HR dataset

Key Features:

Employee demographics

Department and Job Role

Monthly Income

WorkLifeBalance

YearsWithCurrManager

Attrition status

The dataset contained some missing values which were handled during the data preprocessing stage.

🐍 Exploratory Data Analysis (Python)

Data preparation and cleaning were performed using Python (Pandas):

Data Loading: Imported dataset using pandas

Initial Exploration: Used info() and describe() for structure and statistics

Missing Data Handling: Imputed missing values in YearsWithCurrManager using group-wise median

Column Standardization: Converted column names to lowercase

Data Cleaning: Removed inconsistent or null-heavy rows

Database Integration: Loaded cleaned data into MySQL using SQLAlchemy

🗄️ SQL Business Analysis

Structured SQL queries were written to extract business insights:

Employee distribution by gender

High-income employee detection

Top 5 highest paid employees

Work-life balance vs income analysis

Department-wise attrition analysis

Attrition-prone job roles

Employee tenure segmentation

Top paid employee per department

Tenure vs attrition relationship

Income distribution by work-life balance

These queries transformed raw HR data into actionable intelligence.

📊 Power BI Dashboard

An interactive dashboard was built in Power BI to visualize:

Attrition trends

Department analysis

Salary distribution

Workforce segmentation

The dashboard enables quick and intuitive HR decision-making.

💡 Business Recommendations

Focus on high-attrition departments

Improve work-life balance initiatives

Benchmark salaries for critical roles

Strengthen manager–employee engagement

Implement early attrition warning dashboards

Use data-driven HR decision processes

🛠️ Tech Stack

Python (Pandas)

MySQL

SQLAlchemy

Power BI

VS Code

🚀 Project Workflow
Data Collection → Data Cleaning (Python) → Database Loading (MySQL)
→ SQL Analysis → Power BI Dashboard → Business Insights
📌 Author

Vivek
Aspiring Data Analyst
