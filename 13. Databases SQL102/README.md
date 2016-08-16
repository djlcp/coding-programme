#SQL 102 - Workshop Exercises

![SQL Injection](https://imgs.xkcd.com/comics/exploits_of_a_mom.png "SQL Injection")

You are creating a database which will be used by an eCommerce store to track products, stock, customer details and sales. Try to work your way through the exercises below - keep it as simple as possible!

- CREATE a table to hold the list of products which are available from the store. As a minimum, this should have columns for ‘id’ (which should be set to AUTO_INCREMENT), a price, description and current quantity in stock.

- INSERT some products into your table (at least 5) - give them different prices and stock levels.

- CREATE a table to hold details of the customers. This should at least contain an ‘id’, their name, address and email-address.

- INSERT some customers into your table (at least 5) - with different names, addresses and email addresses.

Now you can CREATE tables to manage order information. Because an order will often contain more than one product you should create a header table (perhaps called ‘Order’ - remember this is a reserved word!) first. This should contain an id, the id of the customer placing the order, and the date/time at which the order was placed.

Make sure your Order ‘header’ table has a FOREIGN KEY referencing your Customer table.

Now CREATE an ‘OrderItem’ table to list the items in each order. This should consist of an id column, the order_id it corresponds to, as well as the id of the product and the quantity ordered.

Make sure your ‘OrderItem’ table has the necessary FOREIGN KEYs.

INSERT some orders into your tables - first the headers, and then the items. Create a few orders with a couple of items each (make sure at least one has a single item in it and at least one customer has not placed any orders).

UPDATE one of your products so that it has 0 remaining in stock.

Write a query which lists all the products currently in stock (SELECT)

Write a query for all orders, with the name and address which they need to be sent to (JOIN)

Adapt your query above so that it actually shows all of the items ordered (including name, and where they need to be sent to) (another JOIN!)

Write a query (using GROUP BY) which shows the total of each product sold. You may find it easier to start off just showing product_id, and then adding the name afterwards.

Write a query which calculates the total cost of each order.

Write a query which calculates the total owed by each customer, including those who owe nothing.

Write a query which produces a list of all products having less in stock than sold.

