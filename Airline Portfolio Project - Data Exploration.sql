/*
Airline Passenger Satisfaction

/*

/* Load Airline Passenger Satisfaction dataset */

/* How many total passengers */

SELECT COUNT(ID) FROM airline_passenger_satisfaction;

-- Which percentage of airline passengers are satisfied? Does it vary by customer type? What about type of travel?

-- FINDING PERCETAGE OF AGE RANGES OF PASSENGERS

SELECT (Age) FROM airline_passenger_satisfaction;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM airline_passenger_satisfaction) AS percentage
FROM airline_passenger_satisfaction
WHERE age BETWEEN 0 AND 15;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM airline_passenger_satisfaction) AS percentage
FROM airline_passenger_satisfaction
WHERE age BETWEEN 16 AND 30;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM airline_passenger_satisfaction) AS percentage
FROM airline_passenger_satisfaction
WHERE age BETWEEN 31 AND 45;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM airline_passenger_satisfaction) AS percentage
FROM airline_passenger_satisfaction
WHERE age BETWEEN 46 AND 60;
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM airline_passenger_satisfaction) AS percentage
FROM airline_passenger_satisfaction
WHERE age >= 60;

-- FINDING AVERAGE AGE OF PASSENGERS

SELECT AVG(age) FROM airline_passenger_satisfaction;

---FINDING PERECENTAGE OF PASSENGERS SATISFIED AND NEUTRAL/DISSATISFIED

SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE satisfaction = 'satisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied;
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
           WHERE satisfaction = 'Neutral or Dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied;

--FINDING PERECNTAGE OF PASSENGERS SATISIFIED BY TYPE OF TRAVEL

SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE Type_of_Travel = 'Business' AND satisfaction = 'Neutral or dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE Type_of_Travel = 'Business' AND satisfaction = 'Satisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE Type_of_Travel = 'Personal' AND satisfaction = 'Neutral or dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied
SELECT ROUND(
        (SELECT COUNT(Type_of_Travel)
            FROM airline_passenger_satisfaction
            WHERE Type_of_Travel = 'Personal' AND satisfaction = 'Satisfied') * 100.0 / (SELECT COUNT(Satisfaction)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied;


--FINDING PERECNTAGE OF PASSENGERS SATISIFIED BY CLASS

SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'business' AND satisfaction = 'satisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied;
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'business' AND satisfaction = 'Neutral or dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied;
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'Economy' AND satisfaction = 'satisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied;
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'Economy' AND satisfaction = 'Neutral or dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied;
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'Economy Plus' AND satisfaction = 'satisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_satisfied
SELECT ROUND(
        (SELECT COUNT(*)
            FROM airline_passenger_satisfaction
            WHERE class = 'Economy Plus' AND satisfaction = 'Neutral or dissatisfied') * 100.0 / (SELECT COUNT(*)
            FROM airline_passenger_satisfaction),2) AS percentage_dissatisfied;

 -- FINDING AVERAGE RATINGS OF CATEGORIES

 SELECT [Departure_and_Arrival_Time_Convenience]
      ,[Ease_of_Online_Booking]
      ,[Check_in_Service]
      ,[Online_Boarding]
      ,[Gate_Location]
      ,[On_board_Service]
      ,[Seat_Comfort]
      ,[Leg_Room_Service]
      ,[Cleanliness]
      ,[Food_and_Drink]
      ,[In_flight_Service]
      ,[In_flight_Wifi_Service]
      ,[In_flight_Entertainment]
      ,[Baggage_Handling]
	  FROM airline_passenger_satisfaction;
SELECT AVG([Departure_and_Arrival_Time_Convenience]) FROM airline_passenger_satisfaction;
SELECT AVG([Ease_of_Online_Booking]) FROM airline_passenger_satisfaction;
SELECT AVG([Check_in_Service]) FROM airline_passenger_satisfaction;
SELECT AVG([Online_Boarding]) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Gate_Location]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([On_board_Service]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Seat_Comfort]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Leg_Room_Service]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Cleanliness]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Food_and_Drink]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([In_flight_Service]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([In_flight_Wifi_Service]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([In_flight_Entertainment]),2) FROM airline_passenger_satisfaction;
SELECT ROUND(AVG([Baggage_Handling]),2) FROM airline_passenger_satisfaction;
