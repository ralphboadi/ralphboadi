# Oil & Gas Production Data Normalization Project 

---

## Project Overview 
This project focues on normalizing synthetic oil & gas production data to create a clean, structured database optimized for analysis and reporting. 

## Objectives
  - Transform raw, unstructered, unnormalized data into a normalized relational database.
  - Reduce data redundancy and ensure consistency across tables using 1NF --> 2NF --> 3NF method of **Normilization.**
  - Enable efficient querying for reports, analytics and dashboard.
  - Showcase Entity Relational Diagram (ERD) after normalization to present relationship between tables.

---

## Key Relationship 
  - operators.operator_id (PK) --> wells.well_id (PK)
  - wells.well_id (PK) --> production.record_id (PK)
  - sensor_readings.sensor_id (PK) --> production.sensor_id(FK)
### Explanation: 
    - 'Operators --> wells': one operator manages many wells. 
    - 'Wells --> production': one well generates many production records. 
    - 'Sensor_readings --> production': one sensor type can be recored in many production rows. 
    
### ERD Diagram: <img width="1110" height="626" alt="ERD Diagram png" src="https://github.com/user-attachments/assets/1ac4767a-7ece-48be-9f39-daa92510add4" />

## Steps Used to Normalize Data 
  - Loaded raw data into the raw_transactions table created in PgAdmin 4, PostgresSQL.
  - Explored and analyzed the raw_transactions table to understand dataset and identified table has redundancy: 1NF (First Normal Form)
  - Decided Target Normal Form that is taking project to at least 3NF (Third Normal Form). 
  - Created 4 tables and their **primary key (PK)** respectively; Operators Table, Wells Table, Production Table & Sensor_readings Table; 2NF (Second Normal Form).
  - Populated created tables by inserting distinct operators from raw_transactions table, inserted distinct wells linking to operators & fields; 2NF (Second Normal Form). 
  - Inserted distinct sensors from raw_transactions and finally, inserted prodcution (fact table) from raw_transactions; 2NF (Second Normal Form).
  - Verified there's no redundancy and run some joins to confirm the normalized structure matches the orignial raw data; 2NF (Second Normal Form).
  - Added **constraints & foreign keys** to make sure referential integrity is enforced; 3NF (Third Normal Form).

---
## Technologies Used
  - Microsoft Excel: For initial screening. 
  - Postgres SQL : Database for storing and managing normalized tables and scripts for performing extracting, transforming and loading (ETL) task.
  - Python & Generative AI: For generating synthetic data.

---
## Conclusion 
  - What was wrong with the raw table? 
      - The table had redundacy in operator info, well info, production info and sensor info all grouped together under one table called raw_transactions.
  - How I normalized the table? 
      - I created separate tables for operators, wells, production and sensor readings. Used **foreign keys** to link these new tables to each other, creating a normalized relational database. And the raw data from the raw_transactions table was loaded into the newly created tables by using the normalization process. 
  - What insights schema/Entity Relationship Diagram (ERD) now supports?
      - The new normalized schema/ERD allow for efficient querying, analysis, and reporting on the data.
      - The separation of the distinct tables elimates redundancy, reduces risk of data anomalies, and ensure data consistency.
      - Relationships can be identified between operators, wells, production and sensor readings data which was not possible with the single unnormalized table.









