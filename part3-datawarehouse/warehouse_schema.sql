CREATE DATABASE fleximart_dw;
USE fleximart_dw;

CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day_of_week VARCHAR(10),
    day_of_month INT,
    month INT,
    month_name VARCHAR(10),
    quarter VARCHAR(2),
    year_num INT,
    is_weekend TINYINT(1)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_product (
    product_key INT AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    unit_price DECIMAL(10,2)
) ENGINE=InnoDB;


CREATE TABLE dim_customer (
    customer_key INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    customer_segment VARCHAR(20)
) ENGINE=InnoDB;

CREATE TABLE fact_sales (
    sale_key INT AUTO_INCREMENT PRIMARY KEY,
    date_key INT NOT NULL,
    product_key INT NOT NULL,
    customer_key INT NOT NULL,
    quantity_sold INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    discount_amount DECIMAL(10,2) DEFAULT 0,
    total_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_date
        FOREIGN KEY (date_key) REFERENCES dim_date(date_key),
    CONSTRAINT fk_product
        FOREIGN KEY (product_key) REFERENCES dim_product(product_key),
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key)
) ENGINE=InnoDB;

