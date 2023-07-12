# Northwind Database OLTP to OLAP Transformation: Leveraging Dimensional Modeling for Advanced Analytics
This project unlocks the power of advanced analytics and reporting by transforming an OLTP architecture into an efficient OLAP system. It Leverages the capabilities of DBT and BigQuery to implement dimensional modelling and drive data-driven decision-making.

## Aim
To modernise data reporting solution for Northwind through Dimensional Modeling.


## Unveiling OLAP for Northwind OLTP Database
<b> What is the current architecture?</b>

- Northwind traders are export-import companies who trade special foods around the world
- This is a sample database created by Microsoft to demonstrate the features of some of its products, and for training and tutorials.
- The existing architecture is a mix of on-premise and legacy systems
- They use Mysql for their main sales daily transactions
- They use Mysql to build and run reports which were not efficient as the analytical queries impacted the processing speed of the transactions system
<br>

<b> Why the need for a new architecture?</b>

- For better scalability
- To improve reporting speed
- To reduce the load on operational systems
- To improve data security through better access control
<br>

<b>How do we implement a new architechture?</b>

- Northwind traders can migrate an existing database to GCP
- MySQL on-prem can be replaced by a fully managed cloud SQL
- For reporting solutions, an OLAP data warehouse on GCP using Bigquery will be built
- Dimensional Datawarehouse will be built on Bigquery using Kimballs approach with dim and fact tables
<br>



## Identifying Business Requirements
There are many business Processes that can be derived from the Northwind database through the E-R diagram. However, we will be focusing on three processes:
- <b>Sales Overview:</b> Overall sales reports to understand better, what is being sold to our customers, what sells the most, where and what sells the least, the goal is to have a general overview of how the business is going.
- <b>Product Inventory: </b>
Understand the current inventory levels and how to improve stock management, what suppliers we have, and how much is being purchased. This will allow Northwind to understand stock management and potentially land better deals with suppliers
- <b>Customer Reporting: </b>
Allow customers to understand their purchase orders, how much and when they are buying, empowering them to make data-driven decisions while Northwind utilizes this data in combination with its sales data.

### Identifying required tables from ERD
<img src="readme_images/northwind-oltp-erd.png">
<br>
<li>Customers - Customers who buy items from Northwind</li>
<li>Employees - Those who work for Northwind</li>
<li>Orders - Sales Order transactions taking place between the customers & Northwind</li>
<li>Order Details - Order Details for the Orders placed by customer</li>
<li>Inventory Transaction - Transaction details of each inventory</li>
<li>Products - Current Northwind products that customers can purchase</li>
<li>Shippers - Shipped orders from Northwind to customers</li>
<li>Suppliers - Supplies Northwind with required items</li>
<li>Invoices - Invoice created for each order</li>



### Proposed Kimball Data Warehouse Architecture
<img src="readme_images/architecture.png">
<br><br>
From the image below you can find the three layers (datasets) created in Bigquery through DBT. They are identified by the "dbt prefix"
<br>
<img src="readme_images/layers.png">


### Proposed Data Modelling Concepts
- <b>Conceptual Data Model</b>
<img src="readme_images/conceptual_model.png">
<br><br>

- <b>Logical Data Model</b>
<img src="readme_images/logical_model.png">
<br><br>

- <b>Physical Data Model</b>
<img src="readme_images/physical_model.png">
<br><br>


### Results
- The new Data Warehouse uses Bigquery for analytics and Business Intelligence which is more efficient than the previous MySQL system.
- The Reporting is derived from One Big Table denormalised from Dimensional models
- Sales Overview, Product Inventory, and Customer Reporting processes can now be carried out effectively to draw out insights


### Getting started on dbt project
- Commands to install dbt and connect to bigquery <a href="https://github.com/priye-1/OLAP_Dimensional_Modeling_for_Advanced_Analytics/blob/master/sql_bash_commands/dbt_bash_setup.sh">here</a>
- Commands to create tables and insert data <a href="https://github.com/priye-1/OLAP_Dimensional_Modeling_for_Advanced_Analytics/tree/master/sql_bash_commands/bigquery_tables_setup">here</a>
- Commands to create Dim and Fact tables in different layers can be found <a href="https://github.com/priye-1/OLAP_Dimensional_Modeling_for_Advanced_Analytics/tree/master/models">here</a>
- If you are not able to enable billing for Bigquery on your account, insert data manually by uploading csv files located <a href="https://github.com/priye-1/OLAP_Dimensional_Modeling_for_Advanced_Analytics/tree/master/datasets">here</a>



### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
