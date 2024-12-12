# Analyzing Online Retail Business Performance
## Insights required:
The aim of the project is to analyze online retail store data to answer to following business questions: <br />
 1)top 10 highest revenue generating products <br />
 2)top 5 highest selling products in each region <br />
 3)month over month growth comparison for 2022 and 2023 sales <br />
 4)for each category which month had highest sales <br />
 5)which sub category had highest growth by profit from 2022 to 2023<br />
 
## Methodology:
*Data has been extracted from Kaggle using Kaggle API into Jupyter notebook, for cleaning and pre processing using pandas. <br />
*The cleaned data frame is then imported to MS SQL server Database using SQLAlchemy which is a Python SQL toolkit that allows developers to access and manage SQL databases using Pythonic domain language. <br />
*SQL queries have been used to answer business questions making use of aggregations, CTEs, Case statements and window functions. <br />
### Retail Orders data imported from Kaggle through API & extracted from zip file into data frame
![image](https://github.com/user-attachments/assets/34d0bcf9-88a0-4d24-a5fe-f3df835f14b0)

### Finding columns with missing values and setting unknown/not available values in “ship_mode” to null
![image](https://github.com/user-attachments/assets/6c105eef-01af-4a47-8be8-54ad65a55845)

### Creation of new columns: ‘discount’,’sale_price’,’profit’ and conversion of order-date to date data type
![image](https://github.com/user-attachments/assets/5f1e84f8-b0da-4c28-aec1-0b246164f9b6)

### Creating Table schema in SQL server with required columns, data types and lengths
![image](https://github.com/user-attachments/assets/515057b8-4ec9-4e7e-b750-a838028fa96b)

### Using SQL alchemy to export data from python data frame to ORDERS table in master database of SQL Server
![image](https://github.com/user-attachments/assets/34718937-e155-45b4-8970-5abde8e56ff6)

### Top 10 highest revenue generating products 
![image](https://github.com/user-attachments/assets/510b702d-0ad9-4d2e-a63f-9647ab295956)
 
 ### Top 5 highest selling products in each region
 ![image](https://github.com/user-attachments/assets/fee240cb-afce-4873-8412-056b4f2f6cc8)

 ### Month Over month growth comparison for 2022 & 2023
 ![image](https://github.com/user-attachments/assets/503a8c25-4368-45ab-9127-ef54d5a3d84c)

 ### For each category which month had highest sales
 ![image](https://github.com/user-attachments/assets/dbb44924-80a6-4288-a774-d813467990a6)

 ### Profit growth for product sub-categories from highest to lowest (2022 to 2023)
 ![image](https://github.com/user-attachments/assets/70d66bed-93b4-4ae4-8feb-14782c973f5f)




 







