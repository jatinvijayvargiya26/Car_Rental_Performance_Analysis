Car Rental Data Analytics
1. Project Overview

This project analyzes car rental data to identify vehicle availability, pricing patterns, customer ratings, fuel-type distribution, popular car brands, and city-level trends. SQL was used for data validation and analysis, while Power BI was used to build an interactive dashboard.

2. Objective
Analyze car rental vehicle distribution.
Identify popular vehicle types and brands.
Analyze average daily rental rates.
Compare vehicle availability across cities.
Analyze fuel-type distribution.
Study customer ratings and rental activity.
Create an interactive Power BI dashboard for business reporting.
3. Dataset
Records: 5,350
Data type: Car rental / vehicle listing data
Main attributes: Vehicle Type, Fuel Type, City, State, Vehicle Make, Vehicle Model, Rating, Review Count, Renter Trips, Daily Rate, Vehicle Year and Vehicle Age.
4. Tools & Technologies
Excel – Data cleaning and initial analysis
MySQL – Data validation and SQL analysis
Power BI – Interactive dashboard and visualization
5. Data Cleaning & Validation

The dataset was checked for missing values across important columns. SQL validation confirmed that the analyzed dataset contained no NULL values in the selected fields.

The cleaned data was imported into the CarRentalDB MySQL database.

6. SQL Analysis

SQL was used to perform:

Total record count
NULL-value validation
Average rating analysis
Average daily rental rate
Minimum and maximum rental rate
Vehicle type analysis
Fuel type analysis
City-wise vehicle availability
Vehicle brand analysis
Rating and review analysis
Renter trip analysis
Vehicle age vs rental rate analysis

A SQL analytical view named:

car_rental_summary

was created for Power BI reporting.

7. Power BI Dashboard

The dashboard contains:

Total Vehicles KPI
Average Daily Rate KPI
Average Customer Rating KPI
Total Renter Trips KPI
Vehicle Type analysis
Fuel Type distribution
Top 10 Car Brands
Top 10 Cities
Average Daily Rate by Vehicle Age
Interactive filters for Vehicle Type, Fuel Type, State and City
8. Key Insights
The dataset contains 5.35K vehicles.
Average daily rental rate is 90.99.
Average customer rating is 4.92.
Total renter trips are approximately 196K.
Cars represent the largest vehicle category, followed by SUVs.
Gasoline vehicles dominate the fleet.
Las Vegas has the highest vehicle availability among the displayed top cities.
Toyota and Tesla are among the most available car brands.
9. Project Outcome

The project demonstrates how raw car rental data can be transformed into meaningful business insights using Excel, SQL and Power BI. The interactive dashboard enables users to explore vehicle availability, pricing, ratings, brands, fuel types and city-level trends.

Key_Insights.txt

Isme sirf short points rakho:

CAR RENTAL DATA ANALYTICS – KEY INSIGHTS

1. Total vehicles: 5,350
2. Average daily rental rate: 90.99
3. Average customer rating: 4.92
4. Total renter trips: approximately 196K
5. Cars are the most common vehicle type.
6. Gasoline is the dominant fuel type.
7. Las Vegas has the highest availability among the displayed top cities.
8. Toyota and Tesla are among the most available brands.
