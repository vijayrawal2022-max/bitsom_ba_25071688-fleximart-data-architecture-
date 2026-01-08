# FlexiMart – NoSQL Data Management (MongoDB)

## Overview
This project demonstrates the use of MongoDB for managing semi-structured data in the FlexiMart product catalog system. The catalog contains multiple product types with varying attributes, stored in JSON format. MongoDB is used to perform CRUD operations and aggregation queries using the MongoDB Shell (`mongosh`).

## Objectives
- Store product catalog data using a flexible NoSQL schema
- Perform CRUD operations using MongoDB Shell (`mongosh`)
- Execute aggregation queries on product data
- Understand the benefits and trade-offs of using NoSQL databases over RDBMS

## Project Structure
- `products_catalog.json` – JSON file containing product catalog data
- `mongodb_operations.js` – MongoDB Shell (`mongosh`) commands for CRUD and aggregation operations
- `nosql_analysis.md` – Analysis of RDBMS limitations, NoSQL benefits, and trade-offs
- `README.md` – Project documentation

## Technologies Used
- MongoDB
- MongoDB Shell (`mongosh`)
- JSON

## How to Run the Project
1. Start the MongoDB service.
2. Open MongoDB Shell:
   ```bash
   mongosh
