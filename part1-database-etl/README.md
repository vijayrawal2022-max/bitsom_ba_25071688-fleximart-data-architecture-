# Part 1 – Database and ETL Pipeline

## Overview

This phase of the project involves developing an ETL (Extract, Transform, Load) pipeline for the FlexiMart retail system. The process includes cleaning, validating, and transforming raw CSV data before loading it into a MySQL database using Python and Jupyter Notebook.


## Objectives

- Extract raw customer, product, and sales datasets

- Clean, validate, and standardize data to ensure consistency and accuracy

- Load transformed data into structured MySQL database tables

- Produce a comprehensive data quality assessment report

- Execute SQL queries to support business analysis and decision-making

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
