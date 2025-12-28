DROP TABLE IF EXISTS Books CASCADE;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers CASCADE;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

INSERT INTO Books (Title, Author, Genre, Published_Year, Price, Stock) VALUES
('Book A','Author 1','Fiction',1961,12.50,5),
('Book B','Author 2','Fantasy',1990,22.00,8),
('Book C','Author 3','Education',2005,18.75,12),
('Book D','Author 4','Fiction',1980,30.99,4),
('Book E','Author 5','Fantasy',2012,27.49,3),
('Book F','Author 6','Fiction',1970,14.00,20),
('Book G','Author 7','Fantasy',1999,33.33,2),
('Book H','Author 8','Education',2020,40.00,50),
('Book I','Author 9','Fiction',1955,9.99,7),
('Book J','Author 10','Fantasy',1988,29.99,9),
('Book K','Author 11','Education',2015,19.00,11),
('Book L','Author 12','Fiction',2000,24.50,6),
('Book M','Author 13','Fantasy',2021,45.00,10),
('Book N','Author 14','Education',1995,15.25,13),
('Book O','Author 15','Fiction',1985,17.75,14),
('Book P','Author 16','Fantasy',1977,26.80,15),
('Book Q','Author 17','Education',2008,21.00,16),
('Book R','Author 18','Fiction',2019,32.10,17),
('Book S','Author 19','Fantasy',1966,13.40,18),
('Book T','Author 20','Education',1972,11.90,19),
('Book U','Author 21','Fiction',1993,28.99,20),
('Book V','Author 22','Fantasy',2003,34.70,21),
('Book W','Author 23','Education',2011,23.45,22),
('Book X','Author 24','Fiction',2024,50.00,23),
('Book Y','Author 25','Fantasy',1997,37.80,24),
('Book Z','Author 26','Education',2006,20.20,25),
('Book AA','Author 27','Fiction',1968,16.00,26),
('Book BB','Author 28','Fantasy',1979,31.50,27),
('Book CC','Author 29','Education',1983,14.30,28),
('Book DD','Author 30','Fiction',2009,27.99,29),
('Book EE','Author 31','Fantasy',2013,36.99,30),
('Book FF','Author 32','Education',2022,41.10,31),
('Book GG','Author 33','Fiction',1992,21.75,32),
('Book HH','Author 34','Fantasy',1987,25.00,33),
('Book II','Author 35','Education',1975,17.00,34),
('Book JJ','Author 36','Fiction',1962,12.99,35),
('Book KK','Author 37','Fantasy',1994,29.10,36),
('Book LL','Author 38','Education',2018,38.80,37),
('Book MM','Author 39','Fiction',1982,14.44,38),
('Book NN','Author 40','Fantasy',2002,33.99,39),
('Book OO','Author 41','Education',2007,19.99,40),
('Book PP','Author 42','Fiction',1998,22.22,41),
('Book QQ','Author 43','Fantasy',2010,26.66,42),
('Book RR','Author 44','Education',2021,44.44,43),
('Book SS','Author 45','Fiction',1989,17.89,44),
('Book TT','Author 46','Fantasy',2004,23.00,45),
('Book UU','Author 47','Education',1996,15.15,46),
('Book VV','Author 48','Fiction',1974,10.10,47),
('Book WW','Author 49','Fantasy',2023,49.99,48),
('Book XX','Author 50','Education',2017,30.30,49),
('Book YY','Author 51','Fiction',1969,11.11,50),
('Book ZZ','Author 52','Fantasy',2001,28.28,51);

INSERT INTO Customers (Name, Email, Phone, City, Country) VALUES
('Customer 1','c1@mail.com','9000000001','City1','Canada'),
('Customer 2','c2@mail.com','9000000002','City2','India'),
('Customer 3','c3@mail.com','9000000003','City3','UK'),
('Customer 4','c4@mail.com','9000000004','City4','Australia'),
('Customer 5','c5@mail.com','9000000005','City5','Canada'),
('Customer 6','c6@mail.com','9000000006','City6','India'),
('Customer 7','c7@mail.com','9000000007','City7','UK'),
('Customer 8','c8@mail.com','9000000008','City8','Australia'),
('Customer 9','c9@mail.com','9000000009','City9','Canada'),
('Customer 10','c10@mail.com','9000000010','City10','India'),
('Customer 11','c11@mail.com','9000000011','City11','UK'),
('Customer 12','c12@mail.com','9000000012','City12','Australia'),
('Customer 13','c13@mail.com','9000000013','City13','Canada'),
('Customer 14','c14@mail.com','9000000014','City14','India'),
('Customer 15','c15@mail.com','9000000015','City15','UK'),
('Customer 16','c16@mail.com','9000000016','City16','Australia'),
('Customer 17','c17@mail.com','9000000017','City17','Canada'),
('Customer 18','c18@mail.com','9000000018','City18','India'),
('Customer 19','c19@mail.com','9000000019','City19','UK'),
('Customer 20','c20@mail.com','9000000020','City20','Australia'),
('Customer 21','c21@mail.com','9000000021','City21','Canada'),
('Customer 22','c22@mail.com','9000000022','City22','India'),
('Customer 23','c23@mail.com','9000000023','City23','UK'),
('Customer 24','c24@mail.com','9000000024','City24','Australia'),
('Customer 25','c25@mail.com','9000000025','City25','Canada'),
('Customer 26','c26@mail.com','9000000026','City26','India'),
('Customer 27','c27@mail.com','9000000027','City27','UK'),
('Customer 28','c28@mail.com','9000000028','City28','Australia'),
('Customer 29','c29@mail.com','9000000029','City29','Canada'),
('Customer 30','c30@mail.com','9000000030','City30','India'),
('Customer 31','c31@mail.com','9000000031','City31','UK'),
('Customer 32','c32@mail.com','9000000032','City32','Australia'),
('Customer 33','c33@mail.com','9000000033','City33','Canada'),
('Customer 34','c34@mail.com','9000000034','City34','India'),
('Customer 35','c35@mail.com','9000000035','City35','UK'),
('Customer 36','c36@mail.com','9000000036','City36','Australia'),
('Customer 37','c37@mail.com','9000000037','City37','Canada'),
('Customer 38','c38@mail.com','9000000038','City38','India'),
('Customer 39','c39@mail.com','9000000039','City39','UK'),
('Customer 40','c40@mail.com','9000000040','City40','Australia'),
('Customer 41','c41@mail.com','9000000041','City41','Canada'),
('Customer 42','c42@mail.com','9000000042','City42','India'),
('Customer 43','c43@mail.com','9000000043','City43','UK'),
('Customer 44','c44@mail.com','9000000044','City44','Australia'),
('Customer 45','c45@mail.com','9000000045','City45','Canada'),
('Customer 46','c46@mail.com','9000000046','City46','India'),
('Customer 47','c47@mail.com','9000000047','City47','UK'),
('Customer 48','c48@mail.com','9000000048','City48','Australia'),
('Customer 49','c49@mail.com','9000000049','City49','Canada'),
('Customer 50','c50@mail.com','9000000050','City50','India');

INSERT INTO Orders (Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) VALUES
(1,2,'2023-11-02',2,44.00),
(2,5,'2023-11-04',1,45.00),
(3,4,'2023-11-06',3,107.25),
(4,3,'2023-11-07',1,18.75),
(5,1,'2023-11-08',5,62.50),
(6,7,'2023-11-10',2,66.66),
(7,6,'2023-11-11',1,14.00),
(8,10,'2023-11-12',4,119.96),
(9,9,'2023-11-13',2,19.98),
(10,8,'2023-11-15',1,40.00),
(11,11,'2023-11-16',2,38.00),
(12,12,'2023-11-17',1,24.50),
(13,13,'2023-11-18',6,270.00),
(14,14,'2023-11-19',1,15.25),
(15,15,'2023-11-20',3,53.25),
(16,16,'2023-11-21',2,53.60),
(17,17,'2023-11-22',1,21.00),
(18,18,'2023-11-23',2,64.20),
(19,19,'2023-11-24',5,67.00),
(20,20,'2023-11-25',1,11.90),
(21,21,'2023-11-26',2,57.98),
(22,22,'2023-11-27',1,34.70),
(23,23,'2023-11-28',4,93.80),
(24,24,'2023-11-29',1,50.00),
(25,25,'2023-11-30',3,113.40),
(26,26,'2023-12-01',1,20.20),
(27,27,'2023-10-02',2,43.50),
(28,28,'2023-09-15',1,25.00),
(29,29,'2023-08-20',3,53.67),
(30,30,'2023-07-25',1,27.99),
(31,31,'2023-06-18',2,58.20),
(32,32,'2023-05-12',1,41.10),
(33,33,'2023-04-22',5,108.85),
(34,34,'2023-03-14',1,29.10),
(35,35,'2023-02-28',2,59.96),
(36,36,'2023-01-19',1,38.80),
(37,37,'2023-11-03',2,35.78),
(38,38,'2023-11-05',3,90.90),
(39,39,'2023-11-09',1,33.99),
(40,40,'2023-11-11',4,121.20),
(41,41,'2023-11-13',2,22.22),
(42,42,'2023-11-16',1,26.66),
(43,43,'2023-11-17',2,88.88),
(44,44,'2023-11-18',3,53.67),
(45,45,'2023-11-19',1,23.00),
(46,46,'2023-11-20',5,75.75),
(47,47,'2023-11-22',2,20.20),
(48,48,'2023-11-24',1,49.99),
(49,49,'2023-11-25',3,90.90),
(50,50,'2023-11-26',2,22.22);



-- 1) Retrieve all books in the "Fiction" genre:

SELECT * FROM Books
WHERE genre='Fiction';

-- 2) Find books published after the year 1950:
SELECT * FROM Books
WHERE Published_Year>1950;

-- 3) List all customers from the Canada:
SELECT * FROM Customers
WHERE Country='Canada';


-- 4) Show orders placed in November 2023:
SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) AS total_stock FROM Books;



-- 6) Find the details of the most expensive book:

SELECT * FROM Books ORDER BY price DESC
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:

SELECT * FROM Orders
WHERE quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders
WHERE total_amount>20;


-- 9) List all genres available in the Books table:
SELECT DISTINCT genre FROM Books;

-- 10) Find the book with the lowest stock:
SELECT MIN(stock) FROM Books;

SELECT * FROM Books ORDER BY stock ASC
LIMIT 1;

-- 11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount) AS TOTAL_REVENUE FROM Orders;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT *FROM orders;

SELECT b.genre, SUM(o.quantity) AS total_book_sold
FROM Orders o
join Books b
ON b.book_id=o.book_id
GROUP BY b.genre;

-- 2) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS AVG_PRICE FROM Books
WHERE genre='Fantasy';

-- 3) List customers who have placed at least 2 orders:
SELECT customer_id, COUNT(order_id) AS order_count FROM Orders
GROUP BY  customer_id
HAVING COUNT(order_id)>=0;

SELECT c.Customer_ID, c.Name, COUNT(o.Order_ID) AS ORDER_COUNT
FROM Orders o
JOIN Customers c 
ON c.Customer_ID=o.Customer_ID
GROUP BY c.Customer_ID, c.Name
HAVING COUNT(o.Order_ID)>=0;


-- 4) Find the most frequently ordered book:
SELECT o.Book_id, b.title,  COUNT(o.order_id) AS ORDER_COUNT 
FROM Orders o
join Books b ON o.book_id=b.book_id
GROUP BY o.Book_id, b.title
ORDER BY ORDER_COUNT DESC;



-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :

SELECT * FROM Books
WHERE genre='Fantasy'
ORDER BY price DESC 
LIMIT 3;


-- 6) Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS TOTAL_BOOK_SOLD
FROM Orders o
JOIN Books b ON o.book_id=b.book_id
GROUP BY b.author;





-- 7) List the cities where customers who spent over $30 are located:
SELECT DISTINCT c.city, total_amount
FROM Orders o
JOIN Customers c ON o.customer_id= c.customer_id
WHERE total_amount>30;




-- 8) Find the customer who spent the most on orders:
SELECT c.customer_id, c.name, SUM(total_amount) AS TOTAL_SPENT
FROM Orders o
JOIN Customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY TOTAL_SPENT DESC LIMIT 1;


--9) Calculate the stock remaining after fulfilling all orders:
SELECT b.Book_ID, b.Title, b.Stock,
       COALESCE(SUM(o.Quantity), 0) AS Ordered_Quantity,
       b.Stock - COALESCE(SUM(o.Quantity), 0) AS Remaining_Stock
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID, b.Title, b.Stock
ORDER BY b.Book_ID;








