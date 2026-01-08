# vijayrawal2022-max-bitsom_ba_25071815-fleximart-data-architecture
Student Name: Vijay Rawal Student ID: bitsom_ba_25071688 Email: vijayrawal2022@gmail.com Date: 8/1/2026

# Project Overview
The FlexiMart Data Architecture Project presents the end-to-end development of a scalable data solution for a retail organization. The project includes ETL workflows for relational databases, NoSQL data management using MongoDB, and the construction of a star-schema-based data warehouse to support analytical reporting. It highlights the process of converting raw transactional data into clean, structured, and analysis-ready datasets for effective business insights.

# Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md


 # Technologies Used
 
- Programming Stack: Python 3.x with pandas

- Development Platform: Jupyter Notebook environment

- Core Libraries: pandas, mysql-connector-python

- Relational Database System: MySQL version 8.0.44 (arm64)

- NoSQL Data Store: MongoDB version 8.0

Data Warehouse Design: Star schema–based dimensional modeling


# SETUP INSTRUCTIONS
# DATABASE SETUP

# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 2 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongod < part2-nosql/mongodb_operations.js

## Key Learnings

Through this project, I developed a strong understanding of building a complete data architecture from start to finish. I gained hands-on experience creating ETL pipelines, performing data validation and quality checks, and writing efficient SQL queries. Additionally, the project helped me clearly understand the differences between relational and NoSQL databases and highlighted the importance of using star schema design for analytical and reporting purposes.

## Challenges Faced

Managing inconsistent and incomplete data:
This challenge was resolved by applying data validation rules and cleaning mechanisms within the ETL workflow.

Creating an efficient data warehouse structure:
This was addressed by adopting star schema design principles to enhance query simplicity and analytical performance.

### Conclusion

This project showcases my ability to design and implement a complete data architecture incorporating relational databases, NoSQL systems, and a data warehouse. I gained hands-on experience building ETL pipelines, performing data validation, and generating analytical reports using real-world retail data. Overall, the project enhanced my practical understanding of core data engineering concepts and prepared me to work effectively with both structured and semi-structured data in business environments.
