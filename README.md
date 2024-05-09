# Homework
For this homework session, you will work in Google BigQuery with the data set called thelook_ecommerce in the bigquery-public-data project.

1. To get acquainted with the structure of the 7 tables contained in the data set, start by designing its Entity Relationship (ER) Diagram. I already created a skeleton with the 7 tables and their variables which you can find at this Lucidchart link. Follow the link, go to File > Duplicate to make a copy of the diagram which you can now edit. Your task is to: 
   - Add the PK / FK keys in the left column of each table (like in the events table which I have pre-filled)
   - Add the relations between each table using lines to connect the PK <-> FK variables
   - Pro level: you may have noticed that the lines connecting each table have different endings, learn more about those symbols at this page.
2. Use a Left Join to connect the orders table to the users table and return all variables from both tables. 
3. Return a table containing all the customers' full names in the first column and the count of how many orders they made in their history in the second column. Sort them by the second column in descending order. What is the name of the customer that made the highest number of orders? 
4. Now modify the query to show only the customers that made more than ten orders. How many are they (you can count the number of rows)?
5. [Not a real question] By the way, what’s going on with the Smith family from the last query? 🤔
6. Your boss wants to know if there is a relationship between the status of an order and the age bracket of a user. Write a query that returns a pivot table showing the order status by row and four age brackets as separate columns like in the screenshot below:
![alt text](image.png)

## Advanced Exercise 

Using the same data set, answer the following questions: 

1. Use a Left Join to connect the order-item table and the products table; what are the top 3 products in terms of average margin?
2. Using one query, join together the users table to the order-item and products tables; show all the variables from the three tables.
3. Produce a list of all the customers and the average margin per order they generated, sorted in descending order. Who generated the highest margin per order?
4. From the query above, produce the same list but with customers that made at least four orders. Who generated the highest margin per order?
5. Write a query that shows the combination of all customers that live in the same city and have different genders.
