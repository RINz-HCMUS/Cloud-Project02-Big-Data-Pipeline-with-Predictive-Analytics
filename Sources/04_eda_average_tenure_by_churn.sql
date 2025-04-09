SELECT
  label,
  ROUND(AVG(tenure), 2) AS avg_tenure,
  COUNT(*) AS num_customers
FROM project2_dataset.processed_customer_churn
GROUP BY label;
