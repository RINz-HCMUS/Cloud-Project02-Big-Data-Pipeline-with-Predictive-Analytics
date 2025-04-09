CREATE OR REPLACE TABLE project2_dataset.churn_predictions AS
SELECT
  *,
  predicted_label,
  predicted_label_probs[OFFSET(1)].prob AS predicted_churn_probability
FROM
  ML.PREDICT(MODEL `project2_dataset.customer_churn_model`,
    (
      SELECT
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
      FROM project2_dataset.processed_customer_churn
    )
  );
