-- -----------------------------------------------------
-- Table `northwind`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.customer`
(
id	INT64,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.employees`
(
id	INT64,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.privileges`
(
id	INT64,
privilege_name	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`employee_privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.employee_privileges`
(
employee_id	INT64,
privilege_id	INT64
)
;
-- -----------------------------------------------------
-- Table `northwind`.`inventory_transaction_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.inventory_transaction_types`
(
id	INT64,
type_name	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`shippers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.shippers`
(
id	INT64,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`orders_tax_status`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `dl_northwind.orders_tax_status`
(
id	INT64,
tax_status_name	STRING
)
;

-- -----------------------------------------------------
-- Table `northwind`.`orders_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.orders_status`
(
id	INT64,
status_name	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.orders`
(
id	INT64,
employee_id	INT64,
customer_id	INT64,
order_date	DATETIME,
shipped_date	DATETIME,
shipper_id	INT64,
ship_name	STRING,
ship_address	STRING,
ship_city	STRING,
ship_state_province	STRING,
ship_zip_postal_code	STRING,
ship_country_region	STRING,
shipping_fee	FLOAT64,
taxes	FLOAT64,
payment_type	STRING,
paid_date	DATETIME,
notes	STRING,
tax_rate	FLOAT64,
tax_status_id	INT64,
status_id	INT64
)
;
-- -----------------------------------------------------
-- Table `northwind`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.products`
(
supplier_ids	STRING,
id	INT64,
product_code	STRING,
product_name	STRING,
description	STRING,
standard_cost	FLOAT64,
list_price	FLOAT64,
reorder_level	INT64,
target_level	INT64,
quantity_per_unit	STRING,
discontinued	INT64,
minimum_reorder_quantity	INT64,
category	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_order_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.purchase_order_status`
(
id	INT64,
status	STRING
)
;

-- -----------------------------------------------------
-- Table `northwind`.`suppliers`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `dl_northwind.suppliers`
(
id	INT64,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.purchase_orders`
(
id	INT64,
supplier_id	INT64,
created_by	INT64,
submitted_date	DATETIME,
creation_date	DATETIME,
status_id	INT64,
expected_date	DATETIME,
shipping_fee	FLOAT64,
taxes	FLOAT64,
payment_date	DATETIME,
payment_amount	FLOAT64,
payment_method	STRING,
notes	STRING,
approved_by	INT64,
approved_date	DATETIME,
submitted_by	INT64
)
;
-- -----------------------------------------------------
-- Table `northwind`.`inventory_transactions`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `dl_northwind.inventory_transactions`
(
id	INT64,
transaction_type	INT64,
transaction_created_date	DATETIME,
transaction_modified_date	DATETIME,
product_id	INT64,
quantity	INT64,
purchase_order_id	INT64,
customer_order_id	INT64,
comments	STRING
)
;

-- -----------------------------------------------------
-- Table `northwind`.`invoices`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `dl_northwind.invoices`
(
id	INT64,
order_id	INT64,
invoice_date	DATETIME,
due_date	DATETIME,
tax	FLOAT64,
shipping	FLOAT64,
amount_due	FLOAT64
)
;
-- -----------------------------------------------------
-- Table `northwind`.`order_details_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.order_details_status`
(
id	INT64,
status	STRING
)
;
-- -----------------------------------------------------
-- Table `northwind`.`order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.order_details`
(
id	INT64,
order_id	INT64,
product_id	INT64,
quantity	FLOAT64,
unit_price	FLOAT64,
discount	FLOAT64,
status_id	INT64,
date_allocated	DATETIME,
purchase_order_id	INT64,
inventory_id	INT64
)
;
-- -----------------------------------------------------
-- Table `northwind`.`purchase_order_details`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `dl_northwind.purchase_order_details`
(
id	INT64,
purchase_order_id	INT64,
product_id	INT64,
quantity	FLOAT64,
unit_cost	FLOAT64,
date_received	DATETIME,
posted_to_inventory	INT64,
inventory_id	INT64
)
;


-- -----------------------------------------------------
-- Table `northwind`.`sales_reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dl_northwind.sales_reports` (
  group_by STRING,
  display STRING,
  title STRING,
  filter_row_source STRING,
  `default` STRING,
)
;



CREATE TABLE IF NOT EXISTS `dl_northwind.strings`
(
string_id INT64,
string_data STRING,
)
;


/*
dl_northwind = raw data above script 
stg_northwind = select * from dl 
dwh_northwind = dim and fact star schema 
dm_northwind = one big table 

*/