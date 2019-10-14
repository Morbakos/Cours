 drop table if exists companies cascade;
 drop table if exists products cascade;
 drop table if exists orders cascade;
 drop table if exists diary cascade;


CREATE TABLE companies (
   co_id serial PRIMARY KEY,
   co_name varchar(64),
   co_postcode varchar(16),
   co_lastchg timestamp
 );
 CREATE INDEX co_name_idx ON companies (co_name);

 CREATE TABLE products (
   pr_code varchar(6) PRIMARY KEY,
   pr_desc varchar(64)
 );

 CREATE TABLE orders (
   ord_id serial PRIMARY KEY,
   ord_company int4 REFERENCES companies(co_id),
   ord_product varchar(6) REFERENCES products(pr_code),
   ord_qty int4,
   ord_placed date,
   ord_delivered date,
   ord_paid date
 );
 CREATE INDEX ord_placed_idx ON orders(ord_placed);
 CREATE INDEX ord_paid_idx ON orders(ord_paid);

 CREATE TABLE diary (
   dy_id serial PRIMARY KEY,
   dy_company int4 REFERENCES companies(co_id),
   dy_timestamp timestamp DEFAULT now(),
   dy_type varchar(8),
   dy_notes text
 );
 CREATE INDEX dy_company_idx ON diary(dy_company);
 CREATE INDEX dy_timestamp_idx ON diary(dy_timestamp);
 CREATE INDEX dy_cots_idx ON diary(dy_company,dy_timestamp);

CREATE or replace FUNCTION x () 
  returns setof int as
$$
   select i from (values(1),(2) ) t(i);
$$ language SQL;
