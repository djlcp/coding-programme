## Note: These will not work unless you are using the exact same database as me.

### You will have to create a new database (name not important) and then import the sql_102.sql file.  Then you can paste the following code into your editor and run each command individually.

```sql
-- Write a query which lists all the products currently in stock (SELECT)
SELECT * FROM products WHERE quantity > 0;

-- Write a query for all orders, with the name and address which they need to be sent to (JOIN)
SELECT orders.id as order_id, customers.name, customers.address FROM orders
INNER JOIN customers ON customers.id = orders.customer_id;

-- Adapt your query above so that it actually shows all of the items ordered (including name, and where they need to be sent to) (another JOIN!)
SELECT orders.id as order_id, customers.name, customers.address, products.description, order_items.quantity FROM orders
INNER JOIN customers ON customers.id = orders.customer_id
INNER JOIN order_items ON order_items.order_id = orders.id
INNER JOIN products ON order_items.product_id = products.id;

-- Write a query (using GROUP BY) which shows the total of each product sold. You may find it easier to start off just showing product_id, and then adding the name afterwards.
SELECT products.description, SUM(order_items.quantity) as num_sold FROM order_items
INNER JOIN products ON products.id = order_items.product_id
GROUP BY product_id;

-- Write a query which calculates the total cost of each order.
SELECT orders.id as order_id, SUM(products.price * order_items.quantity) as order_total_price FROM orders
INNER JOIN order_items ON order_items.order_id = orders.id
INNER JOIN products ON order_items.product_id = products.id
GROUP BY order_id;

-- Write a query which calculates the total owed by each customer, including those who owe nothing.
SELECT customers.id as customer_id, customers.name as customer_name, COALESCE(SUM(products.price * order_items.quantity),0) as order_total_price FROM customers
LEFT JOIN orders on orders.customer_id = customers.id
LEFT JOIN order_items ON order_items.order_id = orders.id
LEFT JOIN products ON order_items.product_id = products.id
GROUP BY customers.id;

-- Write a query which produces a list of all products having less in stock than sold.
SELECT products.description, products.quantity as num_in_stock, SUM(order_items.quantity) as num_sold FROM products
INNER JOIN order_items ON order_items.product_id = products.id
GROUP BY products.id
HAVING num_sold > num_in_stock;
```

