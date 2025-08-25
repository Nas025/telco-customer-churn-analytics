
# Telco Customer Churn Analytics

This project analyzes **Telco customer churn** using SQL, Python (Jupyter notebooks), and Power BI.  
The goal is to identify key churn drivers and generate insights that can support business decisions.

---

## Project Structure
- **data/raw/** → Original Telco customer churn dataset.(CSV format downloaded from Kaggle)  
- **notebooks/** → Jupyter notebooks for data cleaning, preprocessing, and exploratory data analysis.  
- **sql/** → SQL scripts for database schema creation, cleaning, views, and analysis queries.  
- **powerbi/** → Power BI dashboards and reports for interactive churn analysis.  

---

## Steps
1. **Data Preparation (SQL & Python)**  
   - Created database schema and normalized categorical fields.  
   - Added churn flag column and handled missing values.  
   - Built views and queries for churn KPIs (e.g., churn by contract type, payment method).  

2. **Exploratory Analysis (Notebooks)**  
   - Data cleaning and transformation.  
   - Visualizations of churn distribution across demographics and services.  
   - Feature importance analysis for churn prediction.  

3. **Business Intelligence (Power BI)**  
   - Interactive dashboard with slicers for  services, and contract types.  
   - Visualizations for churn by monthly charges, tenure, and customer segments.  
   - KPIs and trend charts to highlight at-risk customers.  

---

##  Deliverables
- **SQL scripts** → For schema, cleaning, views, and churn insights.  
- **Jupyter notebooks** → For exploratory analysis and modeling.  
- **Power BI dashboard** → For interactive churn reporting.  

---

## Key Insights
- Customers with **month-to-month contracts** have the highest churn rate.  
- **Fiber optic internet users** churn more than DSL users.  
- Higher **monthly charges** and shorter **tenure** correlate strongly with churn.  

---

##  How to Use
1. Load SQL scripts into your database.  
2. Run notebooks for analysis or extend with your own models.  
3. Open the Power BI file (`.pbix`) to explore the interactive dashboard.  

---
