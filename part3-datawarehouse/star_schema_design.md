## Section 1: Schema Overview


# Fact Table: fact_sales

* Grain:
Each record represents one product sold in one order (order line item level).

* Business Process:
Sales transactions made by customers.

# Measures:

- quantity_sold – Number of units sold

- unit_price – Price of a single unit at the time of sale

- discount_amount – Discount applied on that product

total_amount – Final amount after discount
(quantity × unit_price − discount)

# Foreign Keys:

- date_key links to dim_date

- product_key links to dim_product

- customer_key links to dim_customer

-----------------------------------------------------------------------

# Dimension Table: dim_date

The date dimension is used to analyze sales over time.

Attributes:

- date_key (Primary Key) – Surrogate key in YYYYMMDD format

- full_date – Actual calendar date

- day_of_week – Monday, Tuesday, etc.

- month – Month number (1–12)

- month_name – Name of the month

- quarter – Q1, Q2, Q3, Q4

- year – Year value

- is_weekend – Indicates weekend or weekday


# Dimension Table: dim_product

This table contains descriptive information about products.

Attributes:

- product_key (Primary Key)

- product_id – Product ID from source system

- product_name – Name of the product

- category – Product category

- brand – Product brand

- price_band – Low, Medium, or High price range


# Dimension Table: dim_customer

-This table stores customer-related information.

Attributes:

- customer_key (Primary Key)

- customer_id – Customer ID from source system

- customer_name – Full name of the customer

- gender – Customer gender

- city – City of residence

-state – State

- country – Country

- customer_segment – Type of customer (Retail, Corporate, etc.)


-----------------------------------------------------------------------

## Section 2: Design Decisions

The transaction line-item level granularity was selected because it provides the most detailed view of sales data. This level allows accurate tracking of each product sold, including quantity, price, and discounts. From this detailed data, higher-level summaries such as daily, monthly, or yearly sales can easily be derived.

Surrogate keys are used instead of natural keys because they improve performance and simplify joins between tables. Natural keys from source systems may change over time or differ across systems, whereas surrogate keys remain stable and consistent, making the data warehouse easier to maintain.

This star schema supports drill-down and roll-up operations effectively. Users can drill down from yearly sales to monthly or daily sales using the date dimension, or from product category to individual products using the product dimension. Roll-up operations are achieved by aggregating sales data at higher levels, enabling flexible and fast analysis.


-----------------------------------------------------------------------

## Section 3: Sample Data Flow
Source Transaction

Order Number: 101
Customer: John Doe
Product: Laptop
Quantity: 2
Unit Price: 50,000
Order Date: 15-01-2024

-----------------------------------------------------------------------

Data Stored in Data Warehouse

# fact_sales

{
  date_key: 20240115,
  product_key: 5,
  customer_key: 12,
  quantity_sold: 2,
  unit_price: 50000,
  discount_amount: 0,
  total_amount: 100000
}

# dim_date

{
  date_key: 20240115,
  full_date: '2024-01-15',
  month: 1,
  quarter: 'Q1',
  year: 2024,
  is_weekend: false
}

# dim_product

{
  product_key: 5,
  product_name: 'Laptop',
  category: 'Electronics',
  brand: 'HP'
}


# dim_customer

{
  customer_key: 12,
  customer_name: 'John Doe',
  city: 'Mumbai',
  country: 'India',
  customer_segment: 'Retail'
}



