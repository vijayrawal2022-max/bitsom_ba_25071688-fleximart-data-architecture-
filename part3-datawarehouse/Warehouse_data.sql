INSERT INTO dim_date
(date_key, full_date, day_of_week, day_of_month, month, month_name, quarter, year_num, is_weekend)
VALUES
(20240101,'2024-01-01','Monday',1,1,'January','Q1',2024,false),
(20240102,'2024-01-02','Tuesday',2,1,'January','Q1',2024,false),
(20240103,'2024-01-03','Wednesday',3,1,'January','Q1',2024,false),
(20240104,'2024-01-04','Thursday',4,1,'January','Q1',2024,false),
(20240105,'2024-01-05','Friday',5,1,'January','Q1',2024,false),
(20240106,'2024-01-06','Saturday',6,1,'January','Q1',2024,true),
(20240107,'2024-01-07','Sunday',7,1,'January','Q1',2024,true),
(20240110,'2024-01-10','Wednesday',10,1,'January','Q1',2024,false),
(20240113,'2024-01-13','Saturday',13,1,'January','Q1',2024,true),
(20240114,'2024-01-14','Sunday',14,1,'January','Q1',2024,true),
(20240117,'2024-01-17','Wednesday',17,1,'January','Q1',2024,false),
(20240120,'2024-01-20','Saturday',20,1,'January','Q1',2024,true),
(20240121,'2024-01-21','Sunday',21,1,'January','Q1',2024,true),
(20240124,'2024-01-24','Wednesday',24,1,'January','Q1',2024,false),
(20240127,'2024-01-27','Saturday',27,1,'January','Q1',2024,true),

(20240201,'2024-02-01','Thursday',1,2,'February','Q1',2024,false),
(20240202,'2024-02-02','Friday',2,2,'February','Q1',2024,false),
(20240203,'2024-02-03','Saturday',3,2,'February','Q1',2024,true),
(20240204,'2024-02-04','Sunday',4,2,'February','Q1',2024,true),
(20240207,'2024-02-07','Wednesday',7,2,'February','Q1',2024,false),
(20240210,'2024-02-10','Saturday',10,2,'February','Q1',2024,true),
(20240211,'2024-02-11','Sunday',11,2,'February','Q1',2024,true),
(20240214,'2024-02-14','Wednesday',14,2,'February','Q1',2024,false),
(20240217,'2024-02-17','Saturday',17,2,'February','Q1',2024,true),
(20240218,'2024-02-18','Sunday',18,2,'February','Q1',2024,true),
(20240221,'2024-02-21','Wednesday',21,2,'February','Q1',2024,false),
(20240224,'2024-02-24','Saturday',24,2,'February','Q1',2024,true),
(20240225,'2024-02-25','Sunday',25,2,'February','Q1',2024,true),
(20240228,'2024-02-28','Wednesday',28,2,'February','Q1',2024,false);


INSERT INTO dim_product
(product_id, product_name, category, subcategory, unit_price)
VALUES
('P001','Smartphone','Electronics','Mobile',25000),
('P002','Laptop','Electronics','Computer',65000),
('P003','Bluetooth Speaker','Electronics','Audio',4500),
('P004','Headphones','Electronics','Audio',3000),
('P005','Smartwatch','Electronics','Wearable',3500),

('P006','Men T-Shirt','Clothing','Topwear',799),
('P007','Women Kurti','Clothing','Ethnic Wear',1500),
('P008','Jeans','Clothing','Bottomwear',2500),
('P009','Jacket','Clothing','Winter Wear',5500),
('P010','Sports Shoes','Clothing','Footwear',8500),

('P011','Rice 10kg','Grocery','Grains',1200),
('P012','Cooking Oil 5L','Grocery','Edible Oil',4500),
('P013','Tea Powder','Grocery','Beverage',500),
('P014','Sugar 5kg','Grocery','Essentials',900),
('P015','Dry Fruits Pack','Grocery','Snacks',6000);


INSERT INTO dim_customer
(customer_id, customer_name, city, state, customer_segment)
VALUES
('C001','Ravi Kumar','Hyderabad','Telangana','Retail'),
('C002','Anita Sharma','Bengaluru','Karnataka','Retail'),
('C003','Suresh Reddy','Chennai','Tamil Nadu','Corporate'),
('C004','Neha Verma','Mumbai','Maharashtra','Retail'),
('C005','Arjun Singh','Delhi','Delhi','Corporate'),
('C006','Pooja Mehta','Mumbai','Maharashtra','Retail'),
('C007','Karthik Rao','Bengaluru','Karnataka','Retail'),
('C008','Sneha Iyer','Chennai','Tamil Nadu','Retail'),
('C009','Vikas Jain','Delhi','Delhi','Corporate'),
('C010','Meena Das','Hyderabad','Telangana','Retail'),
('C011','Rahul Nair','Bengaluru','Karnataka','Retail'),
('C012','Ayesha Khan','Mumbai','Maharashtra','Retail');

INSERT INTO fact_sales
(date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount)
VALUES
(20240102,1,1,1,25000,0,25000),
(20240103,6,2,2,799,50,1548),
(20240104,11,3,3,1200,0,3600),
(20240105,3,4,1,4500,500,4000),

(20240106,2,5,1,65000,3000,62000),
(20240107,10,6,2,8500,500,16500),
(20240113,15,7,1,6000,0,6000),
(20240114,5,8,3,3500,300,10200),

(20240110,8,9,2,2500,200,4800),
(20240117,7,10,2,1500,100,2900),
(20240120,4,11,1,3000,0,3000),
(20240121,12,12,2,4500,200,8800),

(20240124,9,1,1,5500,500,5000),
(20240127,14,2,4,900,0,3600),

(20240201,1,3,1,26000,1000,25000),
(20240202,6,4,3,799,100,2297),

(20240203,10,5,1,9000,500,8500),
(20240204,11,6,5,1200,0,6000),
(20240207,8,7,2,2700,200,5200),

(20240210,2,8,1,68000,4000,64000),
(20240211,15,9,2,6000,500,11500),
(20240214,3,10,1,4800,300,4500),
(20240217,5,11,2,3600,200,7000),
(20240218,12,12,3,4500,300,13200),

(20240102,13,1,2,500,0,1000),
(20240103,14,2,1,900,0,900),
(20240106,7,3,3,1500,200,4300),
(20240107,9,4,1,5500,0,5500),
(20240110,11,5,2,1200,0,2400),
(20240113,6,6,4,799,100,3096),
(20240114,3,7,1,4500,0,4500),
(20240117,15,8,2,6000,500,11500),
(20240120,10,9,1,8500,0,8500),
(20240121,5,10,2,3500,200,6800),
(20240124,8,11,1,2600,100,2500),
(20240127,12,12,2,4500,0,9000),
(20240203,11,1,3,1200,0,3600),
(20240204,6,2,2,799,0,1598),
(20240210,14,3,5,900,200,4300);