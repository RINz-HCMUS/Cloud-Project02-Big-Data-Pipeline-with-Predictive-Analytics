CREATE OR REPLACE TABLE project2_dataset.processed_customer_churn AS
SELECT
  -- Biến mục tiêu chính
  IF(Churn = TRUE, 1, 0) AS label,

  -- Các đặc trưng (features) có thể sử dụng
  gender,
  SeniorCitizen,
  Partner,
  Dependents,
  tenure,
  PhoneService,
  MultipleLines,
  InternetService,
  OnlineSecurity,
  OnlineBackup,
  DeviceProtection,
  TechSupport,
  StreamingTV,
  StreamingMovies,
  Contract,
  PaperlessBilling,
  PaymentMethod,
  MonthlyCharges,

  -- Chuyển đổi TotalCharges: từ STRING sang FLOAT
  SAFE_CAST(NULLIF(TRIM(TotalCharges), "") AS FLOAT64) AS TotalCharges

FROM
  project2_dataset.raw_customer_churn
WHERE
  -- Loại bỏ dữ liệu lỗi (TotalCharges = NULL hoặc bị lỗi)
  SAFE_CAST(NULLIF(TRIM(TotalCharges), "") AS FLOAT64) IS NOT NULL;

