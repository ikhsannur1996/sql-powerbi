-- 1. Select distinct factory names.
SELECT DISTINCT factory_name FROM factory_data;

-- 2. Find distinct industry types.
SELECT DISTINCT industry_type FROM factory_data;

-- 3. Retrieve factory_id, factory_name, and total number_of_employees over 4 years.
SELECT factory_id, factory_name, SUM(number_of_employees) AS total_employees
FROM factory_data
GROUP BY factory_id, factory_name;

-- 4. List factories with more than 1000 employees in 2024.
SELECT * FROM factory_data WHERE number_of_employees > 1000 AND year = 2024;

-- 5. Get all data for the year 2024.
SELECT * FROM factory_data WHERE year = 2024;

-- 6. Find factory records where average defect rate over 4 years is less than 0.05.
SELECT factory_id, factory_name, AVG(defect_rate) AS avg_defect_rate
FROM factory_data
GROUP BY factory_id, factory_name
HAVING AVG(defect_rate) < 0.05;

-- 7. List factories with safety incidents above 10 in any year.
SELECT DISTINCT factory_name, safety_incidents, year
FROM factory_data
WHERE safety_incidents > 10;

-- 8. Get factories where lean manufacturing practice was 'Implemented' in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE lean_manufacturing_practice = 'Implemented';

-- 9. Find factories with energy consumption over 1,000,000 kWh in any year.
SELECT DISTINCT factory_name, energy_consumed_kwh, year
FROM factory_data
WHERE energy_consumed_kwh > 1000000;

-- 10. List factories with 'Advanced' production technology level in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE production_technology_level = 'Advanced';

-- 11. Count number of factories per industry type.
SELECT industry_type, COUNT(DISTINCT factory_id) AS factory_count
FROM factory_data
GROUP BY industry_type;

-- 12. Find maximum number of employees any factory had in any year.
SELECT MAX(number_of_employees) AS max_employees
FROM factory_data;

-- 13. Calculate overall average defect rate across all years and factories.
SELECT AVG(defect_rate) AS overall_avg_defect_rate
FROM factory_data;

-- 14. Get total units produced in 2024 by all factories combined.
SELECT SUM(total_units_produced) AS total_units_2024
FROM factory_data
WHERE year = 2024;

-- 15. Find the factory with the lowest energy efficiency (kwh per unit) averaged over 4 years.
SELECT factory_id, factory_name, 
       AVG(energy_efficiency_kwh_per_unit) AS avg_energy_efficiency
FROM factory_data
GROUP BY factory_id, factory_name
ORDER BY avg_energy_efficiency ASC
LIMIT 1;

-- 16. Sum defective units per factory over all years.
SELECT factory_id, factory_name, SUM(defective_units) AS total_defective_units
FROM factory_data
GROUP BY factory_id, factory_name;

-- 17. List factories with average defect rate below 0.05 over all years.
SELECT factory_id, factory_name, AVG(defect_rate) AS avg_defect
FROM factory_data
GROUP BY factory_id, factory_name
HAVING AVG(defect_rate) < 0.05;

-- 18. Count number of years with data available per factory.
SELECT factory_id, factory_name, COUNT(DISTINCT year) AS years_reported
FROM factory_data
GROUP BY factory_id, factory_name;

-- 19. Factories with total units produced greater than 20,000 in year 2024.
SELECT factory_name, total_units_produced
FROM factory_data
WHERE year = 2024 AND total_units_produced > 20000;

-- 20. Factories with average employee satisfaction greater than 5 over all years.
SELECT factory_name, AVG(employee_satisfaction) AS avg_employee_satisfaction
FROM factory_data
GROUP BY factory_name
HAVING AVG(employee_satisfaction) > 5;

-- 21. Top 5 factories by total units produced in 2024.
SELECT factory_name, total_units_produced
FROM factory_data
WHERE year = 2024
ORDER BY total_units_produced DESC
LIMIT 5;

-- 22. List factories ordered by defect rate ascending for year 2024.
SELECT factory_name, defect_rate
FROM factory_data
WHERE year = 2024
ORDER BY defect_rate ASC;

-- 23. List factories ordered by employee performance descending for 2024.
SELECT factory_name, employee_performance
FROM factory_data
WHERE year = 2024
ORDER BY employee_performance DESC;

-- 24. Top 3 factories with highest energy consumption in 2024.
SELECT factory_name, energy_consumed_kwh
FROM factory_data
WHERE year = 2024
ORDER BY energy_consumed_kwh DESC
LIMIT 3;

-- 25. Top 3 factories with least waste generated in 2024.
SELECT factory_name, waste_generated_kg
FROM factory_data
WHERE year = 2024
ORDER BY waste_generated_kg ASC
LIMIT 3;

-- 26. List factories with names containing 'Global' in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE factory_name LIKE '%Global%';

-- 27. Factories with non-null quality certification in any year.
SELECT DISTINCT factory_name, quality_certification
FROM factory_data
WHERE quality_certification IS NOT NULL;

-- 28. List factories with production technology level starting with 'B' in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE production_technology_level LIKE 'B%';

-- 29. Factories with high automation level in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE automation_level = 'High';

-- 30. Factories with ISO certification in quality certification column in any year.
SELECT DISTINCT factory_name
FROM factory_data
WHERE quality_certification LIKE '%ISO%';
