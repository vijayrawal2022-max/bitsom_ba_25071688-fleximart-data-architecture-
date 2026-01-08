

## Entity–Relationship Description
## Entity: Customers

# Purpose:
- This entity stores customer details that are extracted, cleaned, and standardized from the customers.csv source file.

## Attributes:

- customer_id – Unique identifier for each customer (Primary Key)

- first_name – Customer’s given name

- last_name – Customer’s surname

- email – Customer’s email address (Unique)

- phone – Customer contact number

- city – Customer’s city of residence

- registration_date – Date of customer registration

# Relationships: A single customer can place multiple orders, establishing a one-to-many relationship with the orders table

# Entity: Products

# Purpose:
Stores product information that has been extracted, cleaned, and standardized from the products.csv file.

## Attributes:

- product_id – Unique identifier for each product (Primary Key)

- product_name – Name of the product

- category – Product category

- price – Unit price of the product

- stock_quantity – Available inventory quantity

## Relationships:

A single product can be associated with multiple order items (one-to-many relationship with the order_items table)

## Entity: Orders

# Purpose:
- Stores order-level details derived from the sales.csv dataset.

# Attributes:

- order_id – Unique identifier for each order (Primary Key)

- customer_id – Identifier of the customer who placed the order (Foreign Key)

- order_date – Date on which the order was placed

- total_amount – Total monetary value of the order

- status – Current status of the order

# Relationships:

- Each order is linked to exactly one customer (many-to-one relationship with the customers table)

- Each order can include multiple order items (one-to-many relationship with the order_items table)

### ENTITY: order_items
Purpose: Stores item-level order details derived from sales.csv.
Attributes:
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

The database schema is designed in accordance with Third Normal Form (3NF) principles to ensure data integrity and reduce redundancy. Each table contains a primary key that uniquely identifies every record, and all non-key attributes are fully functionally dependent on that primary key. For instance, customer-related attributes depend solely on customer_id, while product-related attributes depend only on product_id. Since no composite primary keys are used, partial dependencies are eliminated.

Transitive dependencies are avoided by organizing data into well-defined, separate tables. Order-related information is maintained in the orders table, product details are stored in the products table, and individual order line items are captured in the order_items table. This structure prevents the repetition of product information across orders and supports efficient data management and scalability.


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
