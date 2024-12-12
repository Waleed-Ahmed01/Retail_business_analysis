# Analyzing Online Retail Business Performance
## Insights required:
The aim of the project is to analyze online retail store data to answer to following business questions:
 1)top 10 highest revenue generating products 
 2)top 5 highest selling products in each region
 3)month over month growth comparison for 2022 and 2023 sales
 4)for each category which month had highest sales 
 5)which sub category had highest growth by profit from 2022 to 2023
 
## Methodology:
*Data has been extracted from Kaggle using Kaggle API into Jupyter notebook, for cleaning and pre processing using pandas. 
*The cleaned data frame is then imported to MS SQL server Database using SQLAlchemy which is a Python SQL toolkit that allows developers to access and manage SQL databases using Pythonic domain language. 
*SQL queries have been used to answer business questions making use of aggregations, CTEs, Case statements and window functions.
### Retail Orders data imported from Kaggle through API & extracted from zip file into data frame
![image](https://github.com/user-attachments/assets/34d0bcf9-88a0-4d24-a5fe-f3df835f14b0)

### Finding columns with missing values and setting unknown/not available values in “ship_mode” to null
![image](https://github.com/user-attachments/assets/6c105eef-01af-4a47-8be8-54ad65a55845)

### Creation of new columns: ‘discount’,’sale_price’,’profit’ and conversion of order-date to date data type
![image](https://github.com/user-attachments/assets/5f1e84f8-b0da-4c28-aec1-0b246164f9b6)


