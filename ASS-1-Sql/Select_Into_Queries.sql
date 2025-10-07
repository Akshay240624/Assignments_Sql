-- 1. Books published in the last year
CREATE TABLE Books_Last_Year AS
SELECT *
FROM Books
WHERE YEAR(Published_Date) = YEAR(CURDATE()) - 1;

-- 2. Expired Members
CREATE TABLE Expired_Members AS
SELECT *
FROM Members
WHERE Expiry_Date < CURDATE();

-- 3. Overdue Books
CREATE TABLE Overdue_Books AS
SELECT *
FROM Transactions
WHERE Due_Date < CURDATE() AND Return_Date IS NULL;

-- 4. High Fine Transactions
CREATE TABLE High_Fine_Transactions AS
SELECT *
FROM Transactions
WHERE Fine > 50;

-- 5. Available Books
CREATE TABLE Available_Books AS
SELECT *
FROM Books
WHERE Status = 'Available';

-- 6. Recent Reviews
CREATE TABLE Recent_Reviews AS
SELECT *
FROM Book_Reviews
WHERE Review_Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- 7. Top Authors
CREATE TABLE Top_Authors AS
SELECT *
FROM Authors
WHERE Books_Written > 5;

-- 8. Recent Transactions
CREATE TABLE Recent_Transactions AS
SELECT *
FROM Transactions
WHERE Transaction_Date >= DATE_SUB(CURDATE(), INTERVAL 1 WEEK);

-- 9. Popular Books
CREATE TABLE Popular_Books AS
SELECT *
FROM Books
WHERE Times_Borrowed > 10;

-- 10. Inactive Members
CREATE TABLE Inactive_Members AS
SELECT *
FROM Members
WHERE Last_Borrowed_Date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
