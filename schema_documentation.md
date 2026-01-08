

## 1. Entity\'96Relationship Description\
\
### ENTITY: customers\
Purpose: Stores customer details extracted and cleaned from customers.csv.\
\
Attributes:\
- customer_id: Unique identifier for each customer (Primary Key)\
- first_name: Customer first name\
- last_name: Customer last name\
- email: Customer email address (Unique)\
- phone: Contact number\
- city: City of residence\
- registration_date: Customer registration date\
\
Relationships:\
- One customer can place many orders (1:M with orders table)\
\
---\
\
### ENTITY: products\
Purpose: Stores product details extracted and cleaned from products.csv.\
\
Attributes:\
- product_id: Unique product identifier (Primary Key)\
- product_name: Name of the product\
- category: Product category\
- price: Product price\
- stock_quantity: Available stock\
\
Relationships:\
- One product can appear in multiple order items (1:M with order_items)\
\
---\
\
### ENTITY: orders\
Purpose: Stores order-level information derived from sales.csv.\
\
Attributes:\
- order_id: Unique identifier for each order (Primary Key)\
- customer_id: Customer placing the order (Foreign Key)\
- order_date: Date of order\
- total_amount: Total order value\
- status: Order status\
\
Relationships:\
- Each order belongs to one customer\
- Each order can contain many order items\
\
---\
\
### ENTITY: order_items\
Purpose: Stores item-level order details derived from sales.csv.\
\
Attributes:\
- order_item_id: Unique identifier (Primary Key)\
- order_id: Order reference (Foreign Key)\
- product_id: Product reference (Foreign Key)\
- quantity: Quantity ordered\
- unit_price: Price per unit\
- subtotal: quantity \'d7 unit_price\
\
Relationships:\
- Each order item belongs to one order\
- Each order item references one product\
}

## 2. Normalization Explanation

The database schema is designed following Third Normal Form (3NF) principles to ensure data integrity and minimize redundancy.

Each table has a primary key that uniquely identifies records, and all non-key attributes are fully functionally dependent on the primary key. For example, customer details depend only on customer_id, and product attributes depend only on product_id. There are no partial dependencies because no composite primary keys are used.

Transitive dependencies are avoided by separating data into distinct tables. Order information is stored in the orders table, while product details are stored in the products table. Order item details are stored in a separate order_items table, ensuring that product information is not repeated for each order.

Functional dependencies include:
- customer_id → customer attributes
- product_id → product attributes
- order_id → order attributes


The FlexiMart database schema is designed according to Third Normal Form (3NF) to ensure data integrity and minimize redundancy. Each table represents a single entity and contains attributes that depend only on the primary key of that table.

Customer information is stored exclusively in the customers table, where all attributes depend on customer_id. Product-related details are stored in the products table and depend only on product_id. Order-level information such as order date and total amount is stored in the orders table, while item-level details are stored separately in the order_items table.


By separating order-level and product-level information, the schema avoids data duplication and prevents update, insert, and delete anomalies. For example, updating product prices requires changes in only one table, and deleting an order does not remove product or customer data. This normalized design improves scalability, consistency, and maintainability.



## 3. Sample Data Representation

### customers
| customer_id | first_name | city |
|------------|-----------|------|
| 1 | Rahul | Delhi |
| 2 | Anita | Mumbai |

### products
| product_id | product_name | price |
|-----------|--------------|-------|
| 101 | Laptop | 65000 |
| 102 | Mouse | 500 |

### orders
| order_id | customer_id | total_amount |
|---------|-------------|--------------|
| 5001 | 1 | 65500 |

### order_items
| order_item_id | order_id | product_id | quantity |
|--------------|----------|------------|----------|
| 1 | 5001 | 101 | 1 |
| 2 | 5001 | 102 | 1 |
