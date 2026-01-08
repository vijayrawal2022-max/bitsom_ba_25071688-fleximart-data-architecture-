vijayrawal2022-max-bitsom_ba_25071815-fleximart-data-architecture
Student Name: Vijay Rawal Student ID: bitsom_ba_25071688 Email: vijayrawal2022@gmail.com Date: 8/1/2026

Project Overview
The FlexiMart Data Architecture Project demonstrates the design and implementation of a complete data system for a retail business. The project covers relational database ETL processing, NoSQL data handling using MongoDB, and a data warehouse built using a star schema for analytical reporting. It showcases how raw transactional data can be transformed, validated, stored, and analyzed efficiently.

Repository Structure
├── part1-database-etl/ │ ├── etl_pipeline.py │ ├── schema_documentation.md │ ├── business_queries.sql │ └── data_quality_report.txt ├── part2-nosql/ │ ├── nosql_analysis.md │ ├── mongodb_operations.js │ └── products_catalog.json ├── part3-datawarehouse/ │ ├── star_schema_design.md │ ├── warehouse_schema.sql │ ├── warehouse_data.sql │ └── analytics_queries.sql └── README.md

Technologies Used
Programming Language: Python 3.x, pandas
Development Environment: Jupyter Notebook
Libraries: pandas, mysql-connector-python
Relational Database: MySQL 8.0.44 (arm64)
NoSQL Database: MongoDB 8.0
Data Warehouse Modeling: Star Schema


SETUP INSTRUCTIONS
DATABASE SETUP

# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongod < part2-nosql/mongodb_operations.js

## Key Learnings

Through this project, I learned how to design and implement an end-to-end data architecture system. I gained practical experience in ETL pipeline development, data quality validation, and writing optimized SQL queries. The project also helped me understand the differences between relational and NoSQL databases, as well as the importance of star schema modeling for analytical workloads.

## Challenges Faced

1. Handling inconsistent and missing data:
Solved by implementing validation checks and cleaning logic during the ETL process.

2. Designing an effective data warehouse schema:
Addressed by applying star schema principles to simplify analytical queries and improve performance.

### Conclusion

This project demonstrates my ability to design and implement an end-to-end data architecture using relational databases, NoSQL systems, and a data warehouse. I worked hands-on with ETL pipelines, data validation, and analytical reporting using real-world retail data. Overall, the project strengthened my practical understanding of data engineering concepts and prepared me to handle structured and semi-structured data in business environments.
