CREATE PROCEDURE TelcoCompany.churn_by_category(IN p_col VARCHAR(64))
BEGIN
  SET @sql = CONCAT(
    'SELECT ', p_col, ' AS category,
            COUNT(*) AS customers,
            SUM(churn_flag) AS churned,
            ROUND(100.0 * AVG(churn_flag),2) AS churn_rate_pct
     FROM telco_customer_churn
     GROUP BY ', p_col, '
     ORDER BY churn_rate_pct DESC'
  );
  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END;
