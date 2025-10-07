-- 1. Select all factory names.
SELECT factory_name FROM factories;

-- 2. Find the distinct industry types.
SELECT DISTINCT industry_type FROM factories;

-- 3. Retrieve factory_id, factory_name, and number_of_employees.
SELECT factory_id, factory_name, number_of_employees FROM factories;

-- 4. List factories with more than 1000 employees.
SELECT * FROM factories WHERE number_of_employees > 1000;

-- 5. Get all data for the year 2024.
SELECT * FROM factories WHERE year = 2024;

-- 6. Find factories with defect rate less than 0.05.
SELECT * FROM factories WHERE defect_rate < 0.05;

-- 7. List factories with safety incidents more than 10.
SELECT factory_name, safety_incidents FROM factories WHERE safety_incidents > 10;

-- 8. Get factories where lean manufacturing practice is 'Implemented'.
SELECT factory_name FROM factories WHERE lean_manufacturing_practice = 'Implemented';

-- 9. Find factories with energy consumption over 1,000,000 kWh.
SELECT factory_name, energy_consumed_kwh FROM factories WHERE energy_consumed_kwh > 1000000;

-- 10. List factories with 'Advanced' production technology level.
SELECT factory_name FROM factories WHERE production_technology_level = 'Advanced';

-- 11. Count factories in each industry type.
SELECT industry_type, COUNT(*) AS factory_count FROM factories GROUP BY industry_type;

-- 12. Find the maximum number of employees in any factory.
SELECT MAX(number_of_employees) FROM factories;

-- 13. Calculate the average defect rate across all factories.
SELECT AVG(defect_rate) FROM factories;

-- 14. Get the total units produced in 2024.
SELECT SUM(total_units_produced) FROM factories WHERE year = 2024;

-- 15. Find the factory with the lowest energy efficiency.
SELECT factory_name, MIN(energy_efficiency_kwh_per_unit) FROM factories;

-- 16. Sum defective units per factory.
SELECT factory_id, SUM(defective_units) AS total_defective FROM factories GROUP BY factory_id;

-- 17. List factories with average defect rate below 0.05.
SELECT factory_id, AVG(defect_rate) AS avg_defect FROM factories GROUP BY factory_id HAVING AVG(defect_rate) < 0.05;

-- 18. Count the number of years data is available per factory.
SELECT factory_id, COUNT(year) AS years_count FROM factories GROUP BY factory_id;

-- 19. List factories with total units produced over 100,000 in 2024.
SELECT factory_name, total_units_produced FROM factories WHERE year = 2024 AND total_units_produced > 100000;

-- 20. Find factories with employee satisfaction above 5.
SELECT factory_name, AVG(employee_satisfaction) FROM factories GROUP BY factory_name HAVING AVG(employee_satisfaction) > 5;

-- 21. Top 5 factories by total units produced in 2024.
SELECT factory_name, total_units_produced FROM factories WHERE year = 2024 ORDER BY total_units_produced DESC LIMIT 5;

-- 22. List factories ordered by defect rate ascending.
SELECT factory_name, defect_rate FROM factories ORDER BY defect_rate ASC;

-- 23. Factories ordered by employee performance descending.
SELECT factory_name, employee_performance FROM factories ORDER BY employee_performance DESC;

-- 24. Get the 10 factories with the highest energy consumption.
SELECT factory_name, energy_consumed_kwh FROM factories ORDER BY energy_consumed_kwh DESC LIMIT 10;

-- 25. Find the 3 factories with the least waste generated.
SELECT factory_name, waste_generated_kg FROM factories ORDER BY waste_generated_kg ASC LIMIT 3;

-- 26. List factories with names containing 'Global'.
SELECT factory_name FROM factories WHERE factory_name LIKE '%Global%';

-- 27. Find factories with a non-null quality certification.
SELECT factory_name, quality_certification FROM factories WHERE quality_certification IS NOT NULL;

-- 28. List factories with production technology level starting with 'B'.
SELECT factory_name FROM factories WHERE production_technology_level LIKE 'B%';

-- 29. Find factories with 'High' automation level.
SELECT factory_name FROM factories WHERE automation_level = 'High';

-- 30. List factories with 'ISO' in their quality certification.
SELECT factory_name FROM factories WHERE quality_certification LIKE '%ISO%';
