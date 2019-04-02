CREATE DATABASE ex_superstore_normalize;

\connect ex_superstore_normalize;

CREATE TABLE orders(
  row_id INTEGER,
  order_priority TEXT,
  discount REAL,
  unit_price REAL,
  shipping_cost REAL,
  customer_id INTEGER,
  customer_name TEXT,
  ship_mode TEXT,
  customer_segment TEXT,
  product_category TEXT,
  product_subcategory TEXT,
  product_container TEXT,
  product_name TEXT,
  product_base_margin REAL,
  country TEXT,
  region TEXT,
  state TEXT,
  city TEXT,
  postal_code INTEGER,
  order_date TIMESTAMP,
  ship_date TIMESTAMP,
  profit REAL,
  quantity_ordered_new INTEGER,
  sales REAL,
  order_id INTEGER
);

CREATE TABLE returns(
  order_id INTEGER,
  status TEXT
);

\copy orders FROM 'orders.csv' WITH DELIMITER ',' CSV HEADER;
\copy returns FROM 'returns.csv' WITH DELIMITER ',' CSV HEADER;
