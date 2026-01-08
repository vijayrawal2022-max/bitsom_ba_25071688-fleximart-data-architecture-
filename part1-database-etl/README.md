# Part 1 – Database and ETL Pipeline

## Overview
This part of the project focuses on building an ETL (Extract, Transform, Load) pipeline for the FlexiMart retail system. Raw CSV files are cleaned, validated, and loaded into a MySQL database using Python and Jupyter Notebook.

## Objectives
- Extract raw customer, product, and sales data
- Clean and validate data for consistency and accuracy
- Load structured data into MySQL tables
- Generate a data quality report
- Execute business-related SQL queries

## Files Description
- `etl_pipeline.ipynb` – Jupyter Notebook with step-by-step ETL implementation
- `etl_pipeline.py` – Python script version of the ETL pipeline
- `schema_documentation.md` – Database schema and table structure
- `business_queries.sql` – SQL queries answering business questions
- `data_quality_report.txt` – Report showing data quality checks
- `requirements.txt` – Python dependencies required for the ETL process

## How to Run
1. Start MySQL and create the required database.
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
