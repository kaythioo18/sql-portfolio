CREATE TABLE orders (
	order_id INTEGER PRIMARY key AUTOINCREMENT,
	customer_id INTEGER,
	amount INTEGER
	);
INSERT INTO orders (customer_id, amount)
VALUES
(1, 100),
(1, 200),
(2, 300),
(2, 400),
(3, 150),
(3, 250);
SELECT * FROM orders;
SELECT customer_id, sum(amount) AS total_sales FROM orders GROUP By customer_id ORDER By total_sales DESC;
SELECT customer_id, sum(amount) AS total_sales FROM orders GROUP By customer_id ORDER By total_sales DESC LIMIT 1;
