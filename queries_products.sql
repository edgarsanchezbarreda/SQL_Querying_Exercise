-- Comments in SQL Start with dash-dash --

-- #1 Adds the chair product into the table
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false);

-- #2 Adds stool product into the table
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true);

-- #3 Adds table product into the table
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false);

-- #4 Displays all rows and columns in table
SELECT * FROM products;

-- #5 Displays all names in table
SELECT name FROM products;

-- #6 Displays names and prices in table
SELECT name, price FROM products;

-- #7 Adding a random product
INSERT INTO product (name, price, can_be_returned)
VALUES ('laptop', 899.99, true);

-- #8 Displays only products that can be returned
SELECT * FROM products WHERE can_be_returned = true;

-- #9 Display only the products that have a price less than 44.00.
SELECT * FROM products WHERE price < 44.00;

-- #10 Display only the products that have a price in between 22.50 and 99.99.
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- #11 There’s a sale going on: Everything is $20 off! Update the database accordingly.
UPDATE products SET price = price - 20;

-- #12 Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price < 25;

-- #13 And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;

-- #14 There is a new company policy: everything is returnable. Update the database accordingly.
UPDATE products SET can_be_returned = true;