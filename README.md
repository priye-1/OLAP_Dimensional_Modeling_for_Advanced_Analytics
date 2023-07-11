# Northwind Database OLTP to OLAP Transformation: Leveraging Dimensional Modeling for Advanced Analytics
This project unlocks the power of advanced analytics and reporting by transforming an OLTP architecture into an efficient OLAP setup. Leverage the capabilities of DBT and BigQuery to implement dimensional modeling, and drive data-driven decision-making.

## Aim
To modernise data reporting solution for Northwind through DImensional Modeling.


## Unveiling OLAP for Northwind OLTP Database
- <b>what is the current architechture?</b>
<li>Northwind traders are export import companies who trades special foods around the world</li>
<li>This is a sample database created by microsoft to demonstrate the features of some of its products, and for training and tutorials.</li>
<li>The existing architecture is a mix of on premise and legacy systems</li>
<li>They use Mysql for their main sales daily transactions</li>
<li>They use Mysql database to build and run reports which was not efficient as the analytical queries impacted the processing speed of the transactions system</li>
<br>

- <b>why the need for a new architechture?</b>
<li>For better scalability</li>
<li>To improve reporting speed</li>
<li>To reduce load on operational systems</li>
<li>To improve data security through better access control</li>
<br>

- <b>How do we implement a new architechture?</b>
<li>Northwind traders can migrate existing database to GCP</li>
<li>MySQL on-prem can be replaced by a fully managed cloud sql</li>
<li>For reporting solutions, an OLAP data warehouse on GCP using Bigquery will be built</li>
<li>Dimensional Datawarehouse will be built on bigquery using Kimballs approach with dim and fact tables</li>



## Identifying Business Requirements
There are many business Processes that can be derived from North wind database through the E-R diagram. However, we will be focusing on three processes:
- <b>Sales Overview:</b>Overall sales reports to understand better our customers what is being sold, what sells the most where and what sales the least, the goal is to have a general overview of how the business is going
- <b>Product Inventory: </b>
Understand the current inventory levels how to improve stock managengent, what suppliers to we have how much is being purchased. This will allow to understand stock management and potentially broker better deals with suppliers
- <b>Customer Reporting: </b>
Allow customers to understand their purchase orders, how much and when are they buying, empowering them to make data driven decisions and utilize the data to join to their sales data.

### Identifying required tables from ERD
<img src="readme_images/northwind-oltp-erd.png">
<br>
<li>Customers - Customers buy food from Northwind</li>
<li>Employees - Works for Northwind</li>
<li>Orders - Sales Order transactions taking place between the customers & Northwind</li>
<li>Order Details - Order Details for the Orders placed by customer</li>
<li>Inventory Transaction - Transaction details of each inventory</li>
<li>Products - Contains current Northwind products that customers can purchase</li>
<li>Shippers - Ships orders from Northwind to customers</li>
<li>Suppliers - Supply Northwind with required items</li>
<li>Invoices - Invoice created for each order</li>


### Data Modelling Concepts developed
- <b>Conceptual Data Model</b>
<img src="readme_images/conceptual_model.png">
<br><br>
- <b>Logical Data Model</b>
<img src="readme_images/logical_model.png">
<br><br>
- <b>Physical Data Model</b>
<img src="readme_images/physical_model.png">
<br><br>


### Using the starter on dbt project
Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
