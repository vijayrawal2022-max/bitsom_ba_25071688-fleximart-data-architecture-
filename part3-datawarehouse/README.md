
# Part 3 – Data Warehouse and Analytics

## Overview
This part focuses on designing and implementing a data warehouse for analytical reporting. A star schema model is used to support efficient querying and business intelligence operations.

## Objectives
- Design a star schema for analytical workloads
- Create fact and dimension tables
- Load transformed data into the warehouse
- Perform OLAP and analytical queries

## Files Description
- `star_schema_design.md` – Explanation of star schema design
- `warehouse_schema.sql` – SQL script to create warehouse tables
- `warehouse_data.sql` – SQL script to load data into the warehouse
- `analytics_queries.sql` – Analytical queries for reporting and insights

## How to Run
1. Create the data warehouse database.
2. Execute schema creation:
   ```bash
   mysql -u root -p fleximart_dw < warehouse_schema.sql
