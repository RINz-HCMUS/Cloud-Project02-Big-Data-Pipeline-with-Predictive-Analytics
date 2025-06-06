SELECT
  *
FROM
  ML.EVALUATE(MODEL `project2_dataset.customer_churn_model`,
    (
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
      FROM project2_dataset.processed_customer_churn
    )
  );
