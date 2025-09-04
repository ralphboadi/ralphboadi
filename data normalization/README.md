# Oil & Gas Production Data Normalization Project 

## Project Overview 
This project focues on normalizing synthetic oil & gas production data to create a clean, structured database optimized for analysis and reporting. 

## Objectives
  -- Transform raw, unstructered, unnormalized data into a normalized relational database. 
  -- Reduce data redundancy and ensure consistency across tables using 1NF --> 2NF --> 3NF method of **Normilization.**
  -- Enable efficient querying for dashboards, reports and analytics. 
  -- Showcase Entity Relational Diagram (ERD) after normalization to present relationship between tables.

## Problems & Solutions 
  - What was wrong with the raw table? 
    ** The table had redundacy in operator info, well info, production info and sensor info all grouped together under one table called raw_transactions.
  - How I normalized the table? 
    ** I created separate tables for operators, wells, production and sensor readings. Used **foreign keys** to link these new tables to each other, creating a normalized relational database. And the raw data from the raw_transactions table was loaded into the newly created tables by using the normalization process. 
  - What insights schema/ERD now supports? 
  

--
## Steps Used to Normalize Data 
  - Loaded raw data into the raw_transactions table created in PgAdmin 4, PostgresSQL.
  - Explored and analyzed the raw_transactions table to understand dataset and identified table has redundancy: 1NF (First Normal Form)
  - Decided Target Normal Form that is taking project to at least 3NF (Third Normal Form). 
  - Created 4 tables and their **primary key (PK)** respectively; Operators Table, Wells Table, Production Table & Sensor_readings Table; 2NF (Second Normal Form).
  - Populated created tables by inserting distinct operators from raw_transactions table, inserted distinct wells linking to operators & fields; 2NF (Second Normal Form). 
  - Inserted distinct sensors from raw_transactions and finally, inserted prodcution (fact table) from raw_transactions; 2NF (Second Normal Form).
  - Verified there's no redundancy and run some joins to confirm the normalized structure matches the orignial raw data; 2NF (Second Normal Form).
  - Added **constraints & foreign keys** to make sure referential integrity is enforced; 3NF (Third Normal Form). 

-- 

