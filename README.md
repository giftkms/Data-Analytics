# Data-Analytics
## Request overview:
Sales manager need to improve internet sales reports and want to move from static reports to visual dashboards. he focus on how much we have sold of what products, to which clients and how it has been over time.
Seeing as each sales person works on different products and customers it would be beneficial to be able to filter them also and measure our numbers against budget so he added that in a spreadsheet so we can compare our values against performance. The budget is for 2023 and we usually look 2 years back in time when we do analysis of sales.

## The summary request: 
- Report to > (Sales Manager)
- Value of change: Visaul dashbord and improved Sales reporting or follow up for sales force
- Neccessary systemss: Power BI, CRM System
- Other: budgets have been delivered in excel

  ![image](https://github.com/giftkms/Data-Analytics/assets/45896182/113f995c-d2b3-4ac3-a7fd-83f21378ec20)

## Database Overview
this is the example databaes from microsoft https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2019.bak


## Database Overview
this is the example databaes from microsoft 
- Explore the linkage of the data. (Primary key and Foreign key)

  ## Clean and Transformations

Select the necessary table  for Cleaning and Transformations by SQL Server 

- Clean_Date(Dim)
    - Select column date month year in english  and key of the date
    - Seperate 3 characters of month for created abrevated month name
    - Filter data current year and the backward 2 years for measure the budgets
- Clean_Customers(Dim)
    - Select Customers key , Name and Lastname column for concate to Full name in new column
    - Clean gender M > Male and F > Female
    - join customer regoin on the table Geograph for visualize the area in map
- Clean_Product(Dim)
    - Select Product key and detail of the product in english
    - join Product with the category table and sub category table
    - Clean the null value in status column to show “OutDate”
- Clean_Internet_Sales(Fact)
    - Select the key column and sale values
    - Fliter the orderdate in the 2023 and backward 2 years (2021-2023)

## Visualization By Power BI

- import table and connect data together for data model
    ![connect_data](https://github.com/giftkms/Data-Analytics/blob/main/connect_data.png)
  Product_Details.png.
- Mesured total budget ,Toal sale  and KPI
- Design dashboard for
    - Top 10 customers
    - Top 10 products
    - Sales per regions
    - KPI
    - filter date month
    - sales of Category products in donut chart
![Sales_Overviews](https://github.com/giftkms/Data-Analytics/blob/main/Customer_Details.png)
![Customer_Details](https://github.com/giftkms/Data-Analytics/blob/main/Sales_Overviews.png)
![Product_Details](https://github.com/giftkms/Data-Analytics/blob/main/Product_Details.png)




