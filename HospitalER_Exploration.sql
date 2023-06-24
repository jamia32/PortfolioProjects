/*
Hospital Emergency Room Database

/*

/* Load Hospital ER dataset */

SELECT * FROM [Hospital ER_Clean];


/* How many total patients */

SELECT COUNT(*)
FROM [Hospital ER_Clean];

/* How many patients were admitted */

SELECT Admin, COUNT(*) AS counts, ROUND((COUNT(*) * 100.00/
(SELECT COUNT(*) FROM [Hospital ER_Clean])) , 1) AS pct
FROM [Hospital ER_Clean]
GROUP BY Admin;

/* What are the unique values in our patient gender */

SELECT DISTINCT Gender
FROM [Hospital ER_Clean];

/* What is the distribution of our patient gender */

SELECT Gender, COUNT(*) AS counts, ROUND((COUNT(*) * 100.00/
(SELECT COUNT(*) FROM [Hospital ER_Clean])) , 1) AS pct
FROM [Hospital ER_Clean]
GROUP BY Gender;

/* What is the average age of patients */

SELECT AVG(Age)
FROM [Hospital ER_Clean];

/* How many distinct races in dataset */

SELECT DISTINCT Race
FROM [Hospital ER_Clean];

/* What is the distribution of our patients races */

SELECT Race, COUNT(*) as counts, ROUND((COUNT(*) * 100.00/
(SELECT COUNT(*) FROM [Hospital ER_Clean])) , 1) as pct
FROM [Hospital ER_Clean]
GROUP BY Race
ORDER BY pct DESC;

/* What was the average Wait time */

SELECT AVG(Waittime)
FROM [Hospital ER_Clean];

/* What is the maximum Wait time for patients */

SELECT MAX(Waittime)
FROM [Hospital ER_Clean];

/* What is the minimum Wait time for patients */

SELECT MIN(Waittime)
FROM [Hospital ER_Clean];

/* How is our patients distributed across department referrals */

SELECT department_referral, COUNT(*) as counts, ROUND((COUNT(*) * 100.00/(SELECT COUNT(*) FROM [Hospital ER_Clean])), 1) AS pct
FROM [Hospital ER_Clean]
GROUP BY department_referral
ORDER BY counts DESC;


/* How many years of data do we have and percentage per year */

SELECT YEAR(Date) AS years, COUNT(*) AS counts, ROUND((COUNT(*) * 100.00 /
(SELECT COUNT(*) FROM [Hospital ER_Clean])) , 1) AS pct
FROM [Hospital ER_Clean]
GROUP BY YEAR(Date);

/* What day of the week has the highest number of patient vists */

SELECT dayname(date) as visit_day,
COUNT(*) AS Number_of_visits
FROM [Hospital ER_Clean]
GROUP BY Date
ORDER BY Number_of_visits DESC;

/* What time of the day do we have the most patient vists */

SELECT HOUR(Date) as Hour_of_day, COUNT(*) as Number_of_visits
FROM [Hospital ER_Clean]
GROUP BY Hour_of_day
ORDER BY Number_of_visits DESC;


/* What is the patient average satisfation score */

SELECT AVG(SAT)
FROM [Hospital ER_Clean];
