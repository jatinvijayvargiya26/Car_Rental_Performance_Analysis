create database CarRentalDB;
use CarRentalDB;

-- Total records
SELECT COUNT(*) AS total_records
FROM car_rental;

-- NULL-check
SELECT
    SUM(Fuel_Type IS NULL) AS Fuel_Type_NULL,
    SUM(Rating IS NULL) AS Rating_NULL,
    SUM(RenterTripsTaken IS NULL) AS RenterTripsTaken_NULL,
    SUM(ReviewCount IS NULL) AS ReviewCount_NULL,
    SUM(`location.city` IS NULL) AS City_NULL,
    SUM(`location.country` IS NULL) AS Country_NULL,
    SUM(`location.latitude` IS NULL) AS Latitude_NULL,
    SUM(`location.longitude` IS NULL) AS Longitude_NULL,
    SUM(`location.state` IS NULL) AS State_NULL,
    SUM(`owner.id` IS NULL) AS Owner_ID_NULL,
    SUM(`rate.daily` IS NULL) AS Daily_Rate_NULL,
    SUM(`vehicle.make` IS NULL) AS Make_NULL,
    SUM(`vehicle.model` IS NULL) AS Model_NULL,
    SUM(`vehicle.type` IS NULL) AS Type_NULL,
    SUM(`vehicle.year` IS NULL) AS Year_NULL,
    SUM(airportcity IS NULL) AS Airport_City_NULL,
    SUM(Rating_Availability IS NULL) AS Rating_Availability_NULL,
    SUM(Vehicle_Age IS NULL) AS Vehicle_Age_NULL
FROM car_rental;

-- Average rating
SELECT ROUND(AVG(Rating), 2) AS Average_Rating
FROM car_rental;

-- Average daily rental price
SELECT ROUND(AVG(`rate.daily`), 2) AS Average_Daily_Rate
FROM car_rental;

-- Minimum & maximum daily price
SELECT 
    MIN(`rate.daily`) AS Minimum_Rate,
    MAX(`rate.daily`) AS Maximum_Rate
FROM car_rental;

-- Number of different cities
SELECT COUNT(DISTINCT `location.city`) AS Total_Cities
FROM car_rental;

-- Number of different vehicle makes
SELECT COUNT(DISTINCT `vehicle.make`) AS Total_Makes
FROM car_rental;

-- Which vehicle type is more available
SELECT 
    `vehicle.type` AS Vehicle_Type,
    COUNT(*) AS Total_Vehicles
FROM car_rental
GROUP BY `vehicle.type`
ORDER BY Total_Vehicles DESC;

-- Fuel Type Analysis
SELECT 
    Fuel_Type,
    COUNT(*) AS Total_Vehicles
FROM car_rental
GROUP BY Fuel_Type
ORDER BY Total_Vehicles DESC;

-- City-wise Vehicles
SELECT 
    `location.city` AS City,
    COUNT(*) AS Total_Vehicles
FROM car_rental
GROUP BY `location.city`
ORDER BY Total_Vehicles DESC;

-- Average Rental Price by Vehicle Type
SELECT 
    `vehicle.type` AS Vehicle_Type,
    COUNT(*) AS Total_Vehicles,
    ROUND(AVG(`rate.daily`), 2) AS Avg_Daily_Rate
FROM car_rental
GROUP BY `vehicle.type`
ORDER BY Avg_Daily_Rate DESC;

-- Vehicle Make Analysis
SELECT 
    `vehicle.make` AS Vehicle_Make,
    COUNT(*) AS Total_Vehicles,
    ROUND(AVG(`rate.daily`), 2) AS Avg_Daily_Rate
FROM car_rental
GROUP BY `vehicle.make`
ORDER BY Total_Vehicles DESC;
-- Rating Analysis
SELECT 
    ROUND(Rating, 1) AS Rating,
    COUNT(*) AS Total_Vehicles
FROM car_rental
GROUP BY ROUND(Rating, 1)
ORDER BY Rating DESC;

-- Top 10 Most Reviewed Vehicles
SELECT 
    `vehicle.make` AS Vehicle_Make,
    `vehicle.model` AS Vehicle_Model,
    ReviewCount
FROM car_rental
ORDER BY ReviewCount DESC
LIMIT 10;

-- Most expensive vehicle types
SELECT 
    `vehicle.type` AS Vehicle_Type,
    ROUND(AVG(`rate.daily`), 2) AS Avg_Daily_Rate
FROM car_rental
GROUP BY `vehicle.type`
ORDER BY Avg_Daily_Rate DESC;

-- Top 10 highest-rated vehicles
SELECT 
    `vehicle.make` AS Make,
    `vehicle.model` AS Model,
    Rating,
    ReviewCount
FROM car_rental
ORDER BY Rating DESC, ReviewCount DESC
LIMIT 10;

-- Most popular vehicle makes
SELECT 
    `vehicle.make` AS Make,
    COUNT(*) AS Vehicle_Count,
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM car_rental
GROUP BY `vehicle.make`
ORDER BY Vehicle_Count DESC
LIMIT 10;

-- City-wise average rental price
SELECT 
    `location.city` AS City,
    COUNT(*) AS Total_Vehicles,
    ROUND(AVG(`rate.daily`), 2) AS Avg_Daily_Rate
FROM car_rental
GROUP BY `location.city`
ORDER BY Avg_Daily_Rate DESC;

-- Vehicle age vs rental price
SELECT 
    Vehicle_Age,
    COUNT(*) AS Vehicle_Count,
    ROUND(AVG(`rate.daily`), 2) AS Avg_Daily_Rate
FROM car_rental
GROUP BY Vehicle_Age
ORDER BY Vehicle_Age;

-- Most rented/used vehicles
SELECT 
    `vehicle.make` AS Make,
    `vehicle.model` AS Model,
    RenterTripsTaken
FROM car_rental
ORDER BY RenterTripsTaken DESC
LIMIT 10;

-- High-rated + highly reviewed vehicles
SELECT 
    `vehicle.make` AS Make,
    `vehicle.model` AS Model,
    Rating,
    ReviewCount,
    RenterTripsTaken,
    `rate.daily` AS Daily_Rate
FROM car_rental
WHERE Rating >= 4.5
  AND ReviewCount >= 50
ORDER BY Rating DESC, ReviewCount DESC;

-- final summary
CREATE VIEW car_rental_summary AS
SELECT
    `vehicle.type` AS Vehicle_Type,
    Fuel_Type,
    `location.city` AS City,
    `location.state` AS State,
    `vehicle.make` AS Vehicle_Make,
    `vehicle.model` AS Vehicle_Model,
    Rating,
    ReviewCount,
    RenterTripsTaken,
    `rate.daily` AS Daily_Rate,
    `vehicle.year` AS Vehicle_Year,
    Vehicle_Age,
    Rating_Availability
FROM car_rental;
SELECT *
FROM car_rental_summary
LIMIT 10;
USE CarRentalDB;

CREATE OR REPLACE VIEW Cleaned_Data_SQL AS
SELECT
    `vehicle.type`       AS `vehicle.type`,
    Fuel_Type            AS Fuel_Type,
    `location.city`      AS `location.city`,
    `location.state`     AS `location.state`,
    `vehicle.make`       AS `vehicle.make`,
    `vehicle.model`      AS Vehicle_model,
    Rating               AS Rating,
    ReviewCount          AS ReviewCount,
    RenterTripsTaken     AS RenterTripsTaken,
    `rate.daily`         AS Rate_daily,
    `vehicle.year`       AS `vehicle.year`,
    Vehicle_Age          AS Vehicle_Age,
    Rating_Availability  AS Rating_Availability
FROM car_rental;
SELECT *
FROM Cleaned_Data_SQL
LIMIT 10;
