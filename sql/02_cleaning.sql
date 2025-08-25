-- Normalize Yes/No values (idempotent)
UPDATE telco_customer_churn SET PaperlessBilling='Yes'
WHERE UPPER(TRIM(PaperlessBilling))='YES' AND PaperlessBilling<>'Yes';
UPDATE telco_customer_churn SET PaperlessBilling='No'
WHERE UPPER(TRIM(PaperlessBilling))='NO' AND PaperlessBilling<>'No';

UPDATE telco_customer_churn SET Partner='Yes'
WHERE UPPER(TRIM(Partner))='YES' AND Partner<>'Yes';
UPDATE telco_customer_churn SET Partner='No'
WHERE UPPER(TRIM(Partner))='NO' AND Partner<>'No';

UPDATE telco_customer_churn SET Dependents='Yes'
WHERE UPPER(TRIM(Dependents))='YES' AND Dependents<>'Yes';
UPDATE telco_customer_churn SET Dependents='No'
WHERE UPPER(TRIM(Dependents))='NO' AND Dependents<>'No';
