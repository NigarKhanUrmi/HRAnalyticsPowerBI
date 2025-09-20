📊 HR Analytics: Absenteeism Dashboard (SQL + Power BI)

📌 Project Overview

This project demonstrates a complete data analysis pipeline for employee absenteeism using MS SQL Server for data preparation and Power BI for visualization. 
The analysis uncovers absenteeism patterns influenced by health, demographics, workload, and time-based factors, enabling HR teams to make informed workforce decisions.

⚙️ Data Pipeline & Process
🔹 Step 1: Database Setup in SQL Server

Imported absenteeism dataset and created relational tables:
Absenteeism_at_work – core absenteeism records
Compensation – employee compensation details
Reasons – reasons for absence mapping

🔹 Step 2: SQL Queries for Data Preparation
Some of the SQL tasks performed include:

1. Joining Tables
Combined absenteeism, compensation, and reasons datasets for unified analysis.
2. Identifying Healthiest Employees for Bonus
Filtered employees with low absenteeism, healthy BMI, and no smoking/drinking.
3. Budget Allocation for Compensation Increase
Calculated eligible employees for bonus distribution.
4. Optimizing Data for Visualization
Transformed fields to create meaningful categories for Power BI.
BMI Category (Underweight, Healthy, Overweight, Obese)
Seasons (Winter, Spring, Summer, Fall)
6. This optimized dataset was then connected directly into Power BI.

🔹 Step 3: Power BI Dashboard

Connected SQL Server dataset to Power BI via DirectQuery/Import.
Built KPIs, calculated measures, and time-series charts.
Designed interactive dashboard for HR decision-making.

📌 Key Findings
Power BI:
**The average absenteeism among 740 employees is 6.92 hours per year.
**Medical consultations and dental consultations are the two leading causes of absenteeism.
**Absenteeism shows a positive correlation with age, increasing as employees get older.
**The summer season records the highest absenteeism compared to other seasons.
**Lifestyle factors such as being a social smoker or social drinker show no significant impact on absentee hours.
**The first day of the work week (Monday) consistently reflects the highest absenteeism rate among employees.
SQL:
**Based on SQL analysis, non-smoker employees were identified for a bonus distribution. With a budget of $983,221, each eligible employee receives an annual compensation increase of $1,433.

🛠️ Tools & Technologies

SQL Server – for data storage and querying
Power BI Desktop – for interactive dashboard creation
Dataset: Absenteeism at Work (Kaggle)

🚀 How to Run This Project

-->Database Setup:
Run the SQL script in /SQL/SQLQuery3.sql in MS SQL Server.
Confirm that absenteeism, compensation, and reasons tables are created and joined.

-->Connect Power BI
Open Absenteeism_at_work.pbix.
Update the SQL Server connection string to match your local setup.

-->Explore Insights

Use slicers for season, age, education, and reasons.
Analyze absenteeism by month, day of the week, and workload.

📌 Business Impact
This project helps HR leaders:
Identify root causes of absenteeism.
Reward healthier employees fairly with data-backed logic.
Plan resources more effectively around absenteeism peaks.
Improve productivity and employee well-being with proactive measures.

