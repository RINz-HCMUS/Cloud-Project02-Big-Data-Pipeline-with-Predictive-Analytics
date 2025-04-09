SELECT
  ROUND(MonthlyCharges, -1) AS price_bucket,
  COUNT(*) AS num_customers
FROM project2_dataset.processed_customer_churn
GROUP BY price_bucket
ORDER BY price_bucket;
