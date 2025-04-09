-- Grouping + Aggregation
SELECT
  PaymentMethod,
  ROUND(SUM(MonthlyCharges + IFNULL(TotalCharges, 0)), 2) AS total_revenue,
  COUNT(*) AS num_customers
FROM project2_dataset.processed_customer_churn
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;
