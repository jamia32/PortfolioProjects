/*
   Traveler Details
/*
/* Load Travel Details dataset */

/* How many total travelers*/

SELECT COUNT([Trip_ID]) FROM [Traveler].[dbo].[Travel details dataset];

-- FINDING PERCETAGE OF AGE RANGES OF PASSENGERS

SELECT ([Traveler_age]) FROM [Traveler].[dbo].[Travel details dataset];
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM [Traveler].[dbo].[Travel details dataset]) AS percentage
FROM [Traveler].[dbo].[Travel details dataset]
WHERE [Traveler_age] BETWEEN 0 AND 15;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM [Traveler].[dbo].[Travel details dataset]) AS percentage
FROM [Traveler].[dbo].[Travel details dataset]
WHERE [Traveler_age] BETWEEN 16 AND 30;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM [Traveler].[dbo].[Travel details dataset]) AS percentage
FROM [Traveler].[dbo].[Travel details dataset]
WHERE [Traveler_age] BETWEEN 31 AND 45;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM [Traveler].[dbo].[Travel details dataset]) AS percentage
FROM [Traveler].[dbo].[Travel details dataset]
WHERE [Traveler_age] BETWEEN 46 AND 60;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM [Traveler].[dbo].[Travel details dataset]) AS percentage
FROM [Traveler].[dbo].[Travel details dataset]
WHERE [Traveler_age] >= 60;

-- FINDING AVERAGE AGE OF PASSENGERS

SELECT AVG([Traveler_age]) FROM [Traveler].[dbo].[Travel details dataset];

--FINDING PERECNTAGE OF TRAVELERS BY TYPE OF TRAVEL

SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Airplane') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Transportation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Train') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Bus') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Transportation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Car Rental') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Car') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Transportation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Transportation_type] = 'Subway') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);

-- FINDING PERCENTAGE OF TYPE OF ACCOMEDATIONS

SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Hotel') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Accommodation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Hostel') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Resort') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Accommodation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Villa') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Riad') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Accommodation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Airbnb') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Vacation Rental') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Accommodation_type])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Accommodation_type] = 'Guesthouse') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);

-- FINDING AVERAGE COST OF TRANSPORTATION AND ACCOMEDATIONS

SELECT ([Accommodation_cost]) FROM [Traveler].[dbo].[Travel details dataset];
SELECT AVG(convert(float,[Accommodation_cost]))
from [Traveler].[dbo].[Travel details dataset]
where isnumeric([Accommodation_cost])=1;

SELECT ([Transportation_cost]) FROM [Traveler].[dbo].[Travel details dataset];
SELECT AVG(convert(float,[Transportation_cost]))
from [Traveler].[dbo].[Travel details dataset]
where isnumeric([Transportation_cost])=1;

-- FINDING AVERAGE DAYS OF TRIP

SELECT AVG([Duration_days]) FROM [Traveler].[dbo].[Travel details dataset];

-- FINDING PERCENTAGE OF DIFFERENT NATIONALITIES OF TRAVELERS

SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'American') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Korean') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Canadian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'British') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Vietnamese') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Australian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Brazilian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Dutch') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Japanese') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Scottish') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Moroccan') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'German') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Chinese') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Spanish') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Mexican') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Emirati') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'New Zealander') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Cambodian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Greek') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Singaporean') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Indonesian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Taiwanese') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'South African') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'French') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);
SELECT ROUND(
        (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Indian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2)
SELECT ROUND(
        (SELECT COUNT([Traveler_nationality])
            FROM [Traveler].[dbo].[Travel details dataset]
            WHERE [Traveler_nationality] = 'Italian') * 100.0 / (SELECT COUNT(*)
            FROM [Traveler].[dbo].[Travel details dataset]),2);


