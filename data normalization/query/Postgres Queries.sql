-- Inserting operator data into the operator table
INSERT INTO operators (operator_name, operator_address, operator_phone)
SELECT operator_name, operator_address, operator_phone 
FROM raw_transactions; 

-- Inserting wells data into the wells table 
INSERT INTO wells (well_name,field_name,operator_id)
SELECT DISTINCT r.well_name, r.field_name, o.operator_id
FROM raw_transactions r
JOIN operators o 
ON r.operator_name = o.operator_name 
AND r.operator_phone = o.operator_phone 
AND r.operator_address = o.operator _address; 

-- Inserting sensor data into the sensor_readings table
INSERT INTO sensor_readings (sensor_type,reading_unit_reading_value)
SELECT DISTINCT sensor_type, readin-unit,reading_value
FROM raw_transactions;

-- Inserting production data into the Production table  
INSERT INTO production (well_id,sensor_id,production_date,reading_value,product_type,volume_bbl,revenue_usd)
SELECT DISTINCT 
w.well_id, 
s.sensor_id,
r.production_date, 
r.reading_value, 
r.product_type,
r.volume_bbl,
r.revenue_usd 
FROM raw_transactions r 
JOIN sensor_readings s 
ON r.sensor_type = s.sensor_type 
JOIN wells w
ON r.well_name = w.well_name;

-- ADDING CONSTRAINTS & FOREIGN KEYS  to make sure referential integrity is enforced
-- Production links to wells and sensor_readings
ALTER TABLE production
ADD CONSTRAINT fk_well FOREIGN KEY (well_id) REFERENCES wells(well_id);

ALTER TABLE production
ADD CONSTRAINT fk_sensor FOREIGN KEY (sensor_id) REFERENCES sensor_readings(sensor_id);

-- Wells link to operators
ALTER TABLE wells
ADD CONSTRAINT fk_operator FOREIGN KEY (operator_id) REFERENCES operators(operator_id);

-- TESTING  normalization is successful BY: 
-- Count unique wells in raw vs normalized
SELECT COUNT(DISTINCT well_name),well_name FROM raw_transactions GROUP BY well_name;
SELECT COUNT(*), well_name FROM wells GROUP BY well_name;

-- Checking production joined with wells & operators
SELECT p.record_id, w.well_name, o.operator_name, s.sensor_type, p.reading_value
FROM production p
JOIN wells w ON p.well_id = w.well_id
JOIN operators o ON w.operator_id = o.operator_id
JOIN sensor_readings s ON p.sensor_id = s.sensor_id
LIMIT 10;

-- Since sensor_readings should just be reading measurements, the reading_value column best fit in the prodcution table
-- reading_value in sensor_reading table and production table, violate the 3NF because sensor_readings shouldn't depend on reading_value since it a transactional value
-- transactional values best suit production since it is an event, not definitions, so: 
ALTER TABLE sensor_readings
DROP COLUMN reading_value; 