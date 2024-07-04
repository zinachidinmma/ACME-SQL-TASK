/*DATA RETRIEVAL*/
SELECT * FROM [smartphones]

SELECT price FROM smartphones

SELECT processor_brand from smartphones

SELECT processor_name from smartphones

SELECT brand_name, os FROM smartphones


/*DATA MANIPULATION*/
SELECT model from smartphones
where battery_capacity < 5000

SELECT * FROM smartphones
where brand_name = 'apple'

SELECT brand_name, rating FROM smartphones
where ram_capacity = 6

SELECT brand_name, model, rating from smartphones
ORDER BY rating DESC

SELECT brand_name, model from smartphones
where num_cores = 'Octa Core'

SELECT MAX(ram_capacity) as max_ram_capacity,
MIN(ram_capacity) as min_ram_capacity
FROM smartphones

SELECT MAX(price) as oppo_max_price, MIN(price) as oppo_min_price FROM smartphones
where brand_name = 'oppo'

/*DATA ANALYSIS*/
SELECT AVG(ram_capacity) as average_capacity
from smartphones

SELECT brand_name, AVG(internal_memory) as average_internal_memory
from smartphones
GROUP BY brand_name
HAVING AVG(internal_memory) > 200

SELECT COUNT(*) AS total_motorola FROM smartphones
where brand_name ='motorola'

SELECT COUNT(*) AS total_android FROM smartphones
where os ='android'

SELECT brand_name, SUM(rating) AS total_rating
FROM smartphones
GROUP BY brand_name

SELECT SUM(rating) as google_rating FROM smartphones
where brand_name = 'google'




/*CONDITIONAL LOGIC*/
SELECT brand_name, model, price,
CASE 
	WHEN price > 20000 THEN 'Expensive Price'
	WHEN price  BETWEEN 10000 AND 19000 THEN 'Medium Price'
	ELSE 'Cheap Price'
   END AS PriceCategory
FROM smartphones

SELECT brand_name, model, battery_capacity,
CASE 
	WHEN battery_capacity > 5000 THEN 'High Capacity'
	WHEN battery_capacity < 5000 THEN 'Low Capacity'
	WHEN battery_capacity = 5000 THEN 'Medium Capacity'
   END AS BatteryCapacityCategory
FROM smartphones


