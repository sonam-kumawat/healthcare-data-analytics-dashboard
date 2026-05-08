SELECT 
    COUNT(*) AS total_patients,
    ROUND(AVG(billing_amount),2) AS avg_billing,
    ROUND(AVG(length_of_stay),2) AS avg_length_of_stay
FROM healthcare_data;



SELECT admission_type,
       COUNT(*) AS patient_count,
       ROUND(AVG(billing_amount),2) AS avg_bill,
       ROUND(AVG(length_of_stay),2) AS avg_stay
FROM healthcare_data
GROUP BY admission_type
ORDER BY avg_bill DESC;



SELECT medical_condition,
       ROUND(AVG(billing_amount),2) AS avg_cost
FROM healthcare_data
GROUP BY medical_condition
ORDER BY avg_cost DESC
LIMIT 5;



SELECT hospital,
       ROUND(AVG(length_of_stay),2) AS avg_stay,
       ROUND(AVG(billing_amount),2) AS avg_bill
FROM healthcare_data
GROUP BY hospital
ORDER BY avg_stay DESC;
