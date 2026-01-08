Part 1 – Database and ETL Pipeline
Overview

This phase of the project involves designing and implementing an ETL (Extract, Transform, Load) pipeline for the FlexiMart retail system. The pipeline processes raw CSV files by cleaning, validating, and transforming the data before loading it into a MySQL database. The entire workflow is implemented using Python within a Jupyter Notebook environment.

Objectives

Extract raw customer, product, and sales data from CSV files

Clean and validate data to ensure accuracy, consistency, and completeness

Load the transformed data into structured MySQL database tables

Generate a comprehensive data quality report

Execute SQL queries to answer key business questions

File Descriptions

etl_pipeline.ipynb – Jupyter Notebook containing the step-by-step ETL implementation

etl_pipeline.py – Python script version of the ETL pipeline

schema_documentation.md – Documentation of the database schema and table structures

business_queries.sql – SQL queries designed to answer business-related questions

data_quality_report.txt – Summary report of data quality checks and validation results

requirements.txt – List of Python libraries required to run the ETL process

How to Run

Start the MySQL server and create the required database.

Install the necessary dependencies using the following command:

pip install -r requirements.txt
