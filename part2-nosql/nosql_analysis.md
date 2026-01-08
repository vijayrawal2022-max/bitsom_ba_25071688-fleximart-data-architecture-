# NoSQL Analysis

## Section A: Limitations of RDBMS (4 marks)

Relational databases work best when data has a fixed and uniform structure. In a product catalog, different products such as laptops, shoes, and mobiles have different attributes. In RDBMS, this leads to many nullable columns or multiple related tables, making the design complex and inefficient. Frequent schema changes are another challenge. Adding a new product type often requires altering tables, which can cause downtime and affect existing applications. This makes RDBMS less flexible in fast-changing business environments. Additionally, storing customer reviews as nested data is difficult in relational databases. Reviews usually require separate tables and multiple joins to retrieve product details along with reviews. These joins increase query complexity and reduce performance, especially as data grows. Overall, rigid schema design, poor handling of unstructured data, and complex joins make RDBMS less suitable for dynamic product catalogs.

## Section B: NoSQL Benefits (4 marks)

MongoDB addresses these issues using a flexible, document-based schema. Each product can store its own attributes without following a fixed structure, allowing laptops, shoes, and other products to exist in the same collection with different fields. This removes the need for frequent schema changes when new product types are added. MongoDB also supports embedded documents, which allows customer reviews to be stored directly inside the product document. This reduces the need for joins and improves read performance. In addition, MongoDB supports horizontal scalability through sharding, allowing data to be distributed across multiple servers. This makes it suitable for handling large volumes of product and review data while maintaining performance and availability.

## Section C: Trade-offs (2 marks)

One disadvantage of using MongoDB is weaker support for complex transactions compared to MySQL, which can be a limitation when strong ACID guarantees are required. Another drawback is data consistency, as MongoDB’s flexible schema can lead to inconsistent data if validation rules are not properly enforced.
