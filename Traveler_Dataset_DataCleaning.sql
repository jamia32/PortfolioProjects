/*

Cleaning Data in SQL Queries

*/

--SELECT *
--FROM [Traveler].[dbo].[Travel details dataset];
------------------------------------------------------------------------------------------------------------------------
--Removing empty columns

--ALTER TABLE [Traveler].[dbo].[Travel details dataset]
--DROP COLUMN blank;

--Removing empty rows in the table

--DELETE FROM [Traveler].[dbo].[Travel details dataset]
--WHERE Trip_ID IS NULL
--  AND Destination IS NULL
--  AND Start_date IS NULL
--  AND End_date IS NULL
--  AND Duration_days IS NULL
--  AND Traveler_name IS NULL
--  AND Traveler_age IS NULL
--  AND Traveler_gender IS NULL
--  AND Traveler_nationality IS NULL
--  AND Accommodation_cost IS NULL
--  AND Accommodation_type IS NULL
--  AND Transportation_cost IS NULL
--  AND Transportation_type IS NULL;

--Removing empty rows in the table

--DELETE FROM [Travel details dataset] WHERE Trip_ID = 128;
--DELETE FROM [Travel details dataset] WHERE Trip_ID = 72;

--Updating where NULL using the average answers

--update [Travel details dataset]
--    set Transportation_type = 'Plane'
--    where Transportation_type is null;
--update [Travel details dataset]
--    set Transportation_cost = '667'
--    where Transportation_cost is null;

--Updating where integers contain $ and USD

--UPDATE [Traveler].[dbo].[Travel details dataset]
--SET [Transportation_cost] = REPLACE([Transportation_cost],'$','');
--UPDATE [Traveler].[dbo].[Travel details dataset]
--SET [Accommodation_cost] = REPLACE([Accommodation_cost],'$','');
--UPDATE [Traveler].[dbo].[Travel details dataset]
--SET [Accommodation_cost] = REPLACE([Accommodation_cost],'USD','');
--UPDATE [Traveler].[dbo].[Travel details dataset]
--SET [Transportation_cost]= REPLACE([Transportation_cost],'USD','');

--Updating nationality

--SELECT [Traveler_nationality]
--FROM [Traveler].[dbo].[Travel details dataset];

--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'American'
--    where [Traveler_nationality] = 'USA';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Brazilian'
--    where [Traveler_nationality] = 'Brazil';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Canadian'
--    where [Traveler_nationality] = 'Canada';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Chinese'
--    where [Traveler_nationality] = 'China';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'German'
--    where [Traveler_nationality] = 'Germany';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Spanish'
--    where [Traveler_nationality] = 'Spain';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Italian'
--    where [Traveler_nationality] = 'Italy';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Greek'
--    where [Traveler_nationality] = 'Greece';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'British'
--    where [Traveler_nationality] = 'UK';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Emirati'
--    where [Traveler_nationality] = 'United Arab Emirates';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Chinese'
--    where [Traveler_nationality] = 'Hong Kong';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Korean'
--    where [Traveler_nationality] = 'South Korean';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Korean'
--    where [Traveler_nationality] = 'South Korea';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'British'
--    where [Traveler_nationality] = 'UK';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'British'
--    where [Traveler_nationality] = 'United Kingdom';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Taiwanese'
--    where [Traveler_nationality] = 'Taiwan';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Singaporean'
--    where [Traveler_nationality] = 'Singapore';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Traveler_nationality] = 'Cambodian'
--    where [Traveler_nationality] = 'Cambodia';

--Updating flight/Plane to Airplane

--SELECT [Transportation_type]
--FROM [Traveler].[dbo].[Travel details dataset];

--update [Traveler].[dbo].[Travel details dataset]
--    set [Transportation_type] = 'Airplane'
--    where [Transportation_type] = 'Flight';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Transportation_type] = 'Airplane'
--    where [Transportation_type] = 'Plane';


--Updating and Splitting Destination in Cities and Countries columns

--SELECT [Destination]
--FROM [Traveler].[dbo].[Travel details dataset];

--SELECT [Destination], LEFT([Destination], CHARINDEX(',',[Destination])-1) AS Destination_City
--, RIGHT([Destination], LEN([Destination]) - CHARINDEX(',',[Destination])) AS Destination_Country
--FROM [Traveler].[dbo].[Travel details dataset];


--Updating and Correcting Destinations to have both City and Country

--SELECT [Destination]
--FROM [Traveler].[dbo].[Travel details dataset];

--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'New York City, USA'
--    where [Destination] = 'New York';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'New York City, USA'
--    where [Destination] = 'New York, USA';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Honolulu, USA'
--    where [Destination] = 'Honolulu, Hawaii';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Honolulu, USA'
--    where [Destination] = 'Hawaii';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Paris, France'
--    where [Destination] = 'Paris';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Paris, France'
--    where [Destination] = 'France';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Bali, Indonesia'
--    where [Destination] = 'Bali';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'London, UK'
--    where [Destination] = 'London';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Tokyo, Japan'
--    where [Destination] = 'Tokyo';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Tokyo, Japan'
--    where [Destination] = 'Japan';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Sydney, Australia'
--    where [Destination] = 'Sydney, AUS';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Sydney, Australia'
--    where [Destination] = 'Sydney';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Sydney, Australia'
--    where [Destination] = 'Australia';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Rome, Italy'
--    where [Destination] = 'Rome';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Rome, Italy'
--    where [Destination] = 'Italy';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Bangkok, Thailand'
--    where [Destination] = 'Bangkok';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Bangkok, Thailand'
--    where [Destination] = 'Bangkok, Thai';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Bangkok, Thailand'
--    where [Destination] = 'Thailand';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Phuket, Thailand'
--    where [Destination] = 'Phuket, Thai';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Phuket, Thailand'
--    where [Destination] = 'Phuket';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Barcelona, Spain'
--    where [Destination] = 'Barcelona';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Barcelona, Spain'
--    where [Destination] = 'Spain';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Rio de Janeiro, Brazil'
--    where [Destination] = 'Rio de Janeiro';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Rio de Janeiro, Brazil'
--    where [Destination] = 'Brazil';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Athens, Greece'
--    where [Destination] = 'Greece';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Santorini, Greece'
--    where [Destination] = 'Santorini';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Cairo, Egypt'
--    where [Destination] = 'Egypt';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Cancun, Mexico'
--    where [Destination] = 'Mexico';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Vancouver, Canada'
--    where [Destination] = 'Canada';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Cape Town, South Africa'
--    where [Destination] = 'Cape Town';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Cape Town, South Africa'
--    where [Destination] = 'Cape Town, SA';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Dubai, United Arab Emirates'
--    where [Destination] = 'Dubai';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Seoul, South Korea'
--    where [Destination] = 'Seoul';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Amsterdam, Netherlands'
--    where [Destination] = 'Amsterdam';
--update [Traveler].[dbo].[Travel details dataset]
--    set [Destination] = 'Phnom Penh, Cambodia'
--    where [Destination] = 'Phnom Penh';