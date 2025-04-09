CREATE OR REPLACE MODEL `project2_dataset.customer_churn_model`
OPTIONS (
  model_type='logistic_reg',
  input_label_cols=['label']
) AS

SELECT
  label,
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
  TotalCharges
FROM project2_dataset.processed_customer_churn;
