CREATE OR REPLACE VIEW v_churn_overall AS
SELECT COUNT(*) customers,
       SUM(churn_flag) churned,
       ROUND(100*AVG(churn_flag),2) churn_rate_pct,
       ROUND(AVG(MonthlyCharges),2) arpu_monthly
FROM telco_customer_churn;

CREATE OR REPLACE VIEW v_churn_by_contract AS
SELECT Contract,
       COUNT(*) customers,
       SUM(churn_flag) churned,
       ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn
GROUP BY Contract
ORDER BY churn_rate_pct DESC;

CREATE OR REPLACE VIEW v_churn_by_internet AS
SELECT InternetService,
       COUNT(*) customers,
       SUM(churn_flag) churned,
       ROUND(100*AVG(churn_flag),2) churn_rate_pct
FROM telco_customer_churn
GROUP BY InternetService
ORDER BY churn_rate_pct DESC;
