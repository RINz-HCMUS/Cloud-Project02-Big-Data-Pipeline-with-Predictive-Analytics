SELECT
  CASE
    WHEN tenure < 6 THEN '<6 months'
    WHEN tenure BETWEEN 6 AND 12 THEN '6-12 months'
    WHEN tenure BETWEEN 13 AND 24 THEN '13-24 months'
    WHEN tenure BETWEEN 25 AND 48 THEN '25-48 months'
    ELSE '>48 months'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  SUM(label) AS churned,
  ROUND(SUM(label) / COUNT(*), 3) AS churn_rate
FROM project2_dataset.processed_customer_churn
GROUP BY tenure_group
ORDER BY tenure_group;
