SELECT
  InternetService,
  COUNT(*) AS total_customers,
  SUM(label) AS total_churned,
  ROUND(SUM(label) / COUNT(*), 3) AS churn_rate
FROM project2_dataset.processed_customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;
