/*
  Hospital Admissions Exploration Queries
/*

/* Load Hospital.DB */

-- Show first name, last name, and gender of patients whose gender is 'M'

SELECT first_name, last_name, gender 
FROM patients
WHERE gender = 'M';

-- Show first name and last name of patients who does not have allergies. (null)

SELECT first_name, last_name 
FROM patients
WHERE allergies IS NULL;

-- Show first name of patients that start with the letter 'C'

SELECT first_name 
FROM patients
where first_name like 'C%';

-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)

SELECT first_name, last_name
FROM patients
WHERE weight BETWEEN '100' AND '120';

-- Show all of the patients grouped into weight groups. Show the total amount of patients in each weight group.
Order the list by the weight group descending. For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.

SELECT
  COUNT(*) AS patients_in_group,
  FLOOR(weight / 10) * 10 AS weight_group
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC;

-- Show patient_id, first_name, last_name, and attending doctor's specialty.
Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'
Check patients, admissions, and doctors tables for required information.

SELECT
  p.patient_id,
  p.first_name AS patient_first_name,
  p.last_name AS patient_last_name,
  ph.specialty AS attending_doctor_specialty
FROM patients p
  JOIN admissions a ON a.patient_id = p.patient_id
  JOIN doctors ph ON ph.doctor_id = a.attending_doctor_id
WHERE
  ph.first_name = 'Lisa' and
  a.diagnosis = 'Epilepsy'

-- Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

SELECT 
CASE WHEN patient_id % 2 = 0 Then 
    'Yes'
ELSE 
    'No' 
END as has_insurance,
SUM(CASE WHEN patient_id % 2 = 0 Then 
    10
ELSE 
    50 
END) as cost_after_insurance
FROM admissions 
GROUP BY has_insurance;
