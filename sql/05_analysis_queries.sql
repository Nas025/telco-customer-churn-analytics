-- KPIs
SELECT COUNT(*) customers, SUM(churn_flag) churned,
       ROUND(100*AVG(churn_flag),2) churn_rate_pct,
       ROUND(AVG(MonthlyCharges),2) arpu_monthly
FROM telco_customer_churn;

-- Drivers
SELECT Contract, ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn GROUP BY Contract ORDER BY churn_rate_pct DESC;

SELECT InternetService, ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn GROUP BY InternetService ORDER BY churn_rate_pct DESC;

SELECT PaymentMethod, ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn GROUP BY PaymentMethod ORDER BY churn_rate_pct DESC;

-- Tenure bands
SELECT CASE WHEN tenure<6 THEN '<6m'
            WHEN tenure<12 THEN '6–12m'
            WHEN tenure<24 THEN '12–24m'
            ELSE '24m+' END AS tenure_band,
       ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn
GROUP BY tenure_band ORDER BY MIN(tenure);

-- High-risk segment
SELECT customerID, tenure, MonthlyCharges, Contract
FROM telco_customer_churn
WHERE churn_flag=0 AND tenure<6
ORDER BY MonthlyCharges DESC
LIMIT 10;

-- Revenue at risk
SELECT ROUND(SUM(MonthlyCharges*churn_flag),2) lost_monthly_revenue
FROM telco_customer_churn;
