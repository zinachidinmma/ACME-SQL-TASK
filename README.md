# ACME-SQL-TASK
ACME TASK 2 DOCUMENTATION
Database:
The Database we were given to work with is named smartphone_cleaned this comprises of entries about smartphones containing different features of each brand of smartphones.
Data Dictionary:
brand_name: The brand name of the smartphone.
model: The model’s name or number of the smartphone.
price: The price of the smartphone in RUPEES.
rating: The rating of the smartphone out of 100.
has_5g: Indicates whether the smartphone supports 5G connectivity
(TRUE/FALSE).
has_nfc: Indicates whether the smartphone has NFC capability
(TRUE/FALSE).
has_ir_blaster: Indicates whether the smartphone has an IR blaster
(TRUE/FALSE).
processor_name: The name of the processor used in the smartphone.
processor_brand: The brand of the processor used in the smartphone.
num_cores: The number of cores in the processor.
processor_speed: The speed of the processor in GHz.
battery_capacity: The battery capacity of the smartphone in mAh.
fast_charging: The fast-charging capability of the smartphone in watts.
ram_capacity: The RAM capacity of the smartphone in GB.
internal_memory: The internal storage capacity of the smartphone in GB.
refresh_rate: The refresh rate of the smartphone displays in Hz.
resolution: The resolution of the smartphone display.
num_rear_cameras: The number of rear cameras on the smartphone.
num_front_cameras: The number of front cameras on the smartphone.
os: The operating system used in the smartphone.
primary_camera_rear: The resolution of the primary rear camera in
megapixels.
primary_camera_front: The resolution of the primary front camera in
megapixels.
extended_memory: The capacity of extended memory (e.g., microSD card
support) in the smartphone, if applicable.



SQL QUERY LOGIC
DATA RETRIEVAL
1.	Query to retrieve all entries from smartphones  table:
 SELECT * FROM [smartphones]
2.	Query to retrieve price from smartphones table: 
SELECT price FROM smartphones
3.	Query to retrieve processor brand from smartphones table: 
SELECT processor_brand FROM smartphones
4.	Query to retrieve processor name from smartphones table
SELECT processor_name from smartphones
5.	Query to retrieve brand name and os from smartphones table
SELECT brand_name, os FROM smartphones

DATA MANIPULATION
1.	Retrieve smartphone model from smartphones table where battery capacity is less than 5000:
SELECT model from smartphones
where battery_capacity < 5000
2.	Retrieve all contents from smartphones table where the brand name is apple:
SELECT * FROM smartphones
where brand_name = 'apple'
3.	Retrieve the brand name and rating of the smartphone from smartphones table where the ram capacity is 6:
SELECT brand_name, rating FROM smartphones
where ram_capacity = 6
4.	Retrieve the brand name, model and rating from smartphones table. These results are then sorted based on the rating column in descending order:
SELECT brand_name, rating from smartphones
ORDER BY rating DESC
5.	Retrieve the brand name and model from smartphones table where num_core is Octa Core:
SELECT brand_name, model from smartphones
where num_cores = 'Octa Core'
6.	Retrieve the maximum and minimum ram capacity from smartphones table:
SELECT MAX (ram_capacity) as max_ram_capacity,
MIN(ram_capacity) as min_ram_capacity
FROM smartphones
7.	Retrieve the maximum and minimum prices of the oppo smartphone from the smartphones table:
SELECT MAX(price) as oppo_max_price, MIN(price) as oppo_min_price FROM smartphones
where brand_name = 'oppo'


DATA ANALYSIS
1.	This query retrieves the average value of the ram_capacity column from the smartphones table. The result will be a single value representing the average RAM capacity of all smartphones in the table. The result is labelled average_capacity.
SELECT AVG(ram_capacity) as average_capacity
from smartphones

2.	This query calculates the average internal memory for each smartphone brand in the smartphones table. It then filters the results to include only those brands with an average internal memory greater than 200 units. The output will list each qualifying brand and its average internal memory.
SELECT brand_name, AVG(internal_memory) as average_internal_memory
from smartphones
GROUP BY brand_name
HAVING AVG(internal_memory) > 200

3.	This query counts the number of rows in the smartphones table where the brand_name is 'motorola'. The result will be a single value representing the total number of Motorola smartphones in the table. The result is labeled total_motorola.
SELECT COUNT(*) AS total_motorola FROM smartphones
where brand_name ='motorola'

4.	This query counts the number of rows in the smartphones table where the os is ‘android’. The result will be a single value representing the total number of android smartphones in the table. The result is labeled total_android.
SELECT COUNT(*) AS total_android FROM smartphones
where os ='android'

5.	This query groups the rows in the smartphones table by brand_name and calculates the total sum of the rating for each brand. The output will list each brand along with the total rating of all its smartphones.
SELECT brand_name, SUM(rating) AS total_rating
FROM smartphones
GROUP BY brand_name

6.	This query calculates the total sum of the rating column for rows in the smartphones table where the brand_name is 'google'. The result will be a single value representing the total rating of all Google smartphones in the table. The result is labeled google_rating.
SELECT SUM(rating) as google_rating FROM smartphones
where brand_name = 'google'




CONDITIONAL LOGIC
1.	This query retrieves the brand name, model, and price of each smartphone from the smartphones table. It also categorizes each smartphone's price into one of three categories: 'Expensive Price', 'Medium Price', or 'Cheap Price', based on the value of the price column. The output will list each smartphone with its corresponding price category.
SELECT brand_name, model, price,
CASE 
	WHEN price > 20000 THEN 'Expensive Price'
	WHEN price BETWEEN 10000 AND 19000 THEN 'Medium Price'
	ELSE 'Cheap Price'
   END AS PriceCategory
FROM smartphones

2.	This query retrieves the brand name, model, and battery capacity of each smartphone from the smartphones table. It also categorizes each smartphone's battery capacity into one of three categories: 'High Capacity', 'Low Capacity', or 'Medium Capacity', based on the value of the battery_capacity column. The output will list each smartphone with its corresponding battery capacity category.
SELECT brand_name, model, battery_capacity,
CASE 
	WHEN battery_capacity > 5000 THEN 'High Capacity'
	WHEN battery_capacity < 5000 THEN 'Low Capacity'
	WHEN battery_capacity = 5000 THEN 'Medium Capacity'
   END AS BatteryCapacityCategory
FROM smartphones
