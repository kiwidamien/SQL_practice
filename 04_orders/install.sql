CREATE DATABASE ex_orders_random;

\connect ex_orders_random

CREATE TABLE customer(
  customer_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT,
  address TEXT,
  state TEXT);

CREATE TABLE product(
  product_id INTEGER PRIMARY KEY,
  product_name TEXT,
  price REAL);

CREATE TABLE customer_order(
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER REFERENCES customer(customer_id),
  date_ordered TIMESTAMP,
  date_delivered TIMESTAMP
);

CREATE TABLE order_product(
  order_id INTEGER REFERENCES customer_order(order_id),
  product_id INTEGER REFERENCES product(product_id),
  qty INTEGER
);


\copy customer FROM 'customers.csv' WITH DELIMITER ',' CSV HEADER;
\copy product FROM 'products.csv' WITH DELIMITER ',' CSV;
\copy customer_order FROM 'orders.csv' WITH DELIMITER ',' CSV HEADER;
\copy order_product FROM 'order_details.csv' WITH DELIMITER ',' CSV HEADER;
