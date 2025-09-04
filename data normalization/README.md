# Oil & Gas Production Data Normalization Project 

---

## Project Overview 
This project focuses on normalizing synthetic oil & gas production data to create a clean, structured database optimized for analysis and reporting. 

## Objectives
  - Transform raw, unstructured , unnormalized data into a normalized relational database.
  - Reduce data redundancy and ensure consistency across tables using the 1NF --> 2NF --> 3NF **normalization method.**
  - Enable efficient querying for reports, analytics and dashboard.
  - Showcase Entity Relationshop Diagram (ERD) to present relationship between tables.

---

## Key Relationship 
  - operators.operator_id (PK) --> wells.well_id (FK)
  - wells.well_id (PK) --> production.record_id (FK)
  - sensor_readings.sensor_id (PK) --> production.sensor_id(FK)
### Explanation: 
    - 'Operators --> wells': one operator manages many wells. 
    - 'Wells --> production': one well generates many production records. 
    - 'Sensor_readings --> production': one sensor type can be linked to many production rows. 
    
### ERD Diagram: <img width="1110" height="626" alt="ERD Diagram png" src="https://github.com/user-attachments/assets/1ac4767a-7ece-48be-9f39-daa92510add4" />

## Steps Used to Normalize Data 
  - Loaded raw data into the raw_transactions table in PostgresSQL(PgAdmin 4)
  - Explored the raw data and identified table has redundancy: 1NF (First Normal Form)
  - Defined target structure to achieve 3NF (Third Normal Form). 
  - Created normalized tables suth primary keys;2NF (Second Normal Form):
    - operators Table
    - wells Table
    - production Table 
    - sensor_readings Table 
  - Inserted distinct values from raw_transactions into normalized tables; 2NF (Second Normal Form)
  - Established foreign keys to enforce referential integrity (2NF → 3NF).
  - Verified there's no redundancy and run some joins to confirm the normalized structure matches the orignial raw data; 2NF (Second Normal Form).
  - Established foreign keys to enforce referential integrity (2NF → 3NF).

---
## Technologies Used
  - Microsoft Excel: Initial screening of raw data.
  - Postgres SQL : Database, normalization, ETL scripts.
  - Python & Generative AI: Synthetic data generation. 

---
## Conclusion 
  - What was wrong with the raw table? 
      - All operator, well, production, and sensor details were grouped together in a single raw_transactions table.
      - This caused redundancy, anomalies, and inefficiency in querying.
  - How I normalized the table? 
      - Created separate tables(operators, wells, production and sensor readings). 
      - Applied foreign keys to link them together.
      - Used normalization (1NF → 2NF → 3NF) to eliminate redundancy and ensure consistency.
  - What insights schema/Entity Relationship Diagram (ERD) now supports?
      - Efficient queries, reporting, and dashboards.
      - Reduced risk of anomalies and inconsistent data.
      - Clear relationships between operators, wells, production, and sensor readings.









