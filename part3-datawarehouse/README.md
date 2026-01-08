
# Part 3 – Data Warehouse and Analytics
# Overview

This phase of the project involves the design and implementation of a data warehouse to support analytical reporting and business intelligence. A star schema model is employed to enable efficient querying, aggregation, and analytical processing.

# Objectives

- Design a star schema optimized for analytical workloads

- Develop fact and dimension tables

- Load transformed and curated data into the data warehouse

- Perform OLAP operations and analytical queries for reporting and insights
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
