-- eda_churn_rate_by_contract
SELECT
  Contract,
  COUNT(*) AS total_customers,
  SUM(label) AS total_churned,
  ROUND(SUM(label) / COUNT(*), 3) AS churn_rate
FROM project2_dataset.processed_customer_churn
GROUP BY Contract
ORDER BY churn_rate DESC;
