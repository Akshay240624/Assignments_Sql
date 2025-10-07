-- SQL Queries for RIGHT JOIN practice in a Library Database

-- 1. Select all Books with their corresponding Publishers
SELECT b.BookID, b.BookTitle, p.PublisherName
FROM Books b
RIGHT JOIN Publishers p ON b.PublisherID = p.PublisherID;

-- 2. Select all Members with their corresponding Transactions
SELECT m.MemberID, m.MemberName, t.TransactionID, t.TransactionDate
FROM Members m
RIGHT JOIN Transactions t ON m.MemberID = t.MemberID;

-- 3. Select all Members with their corresponding Membership_Types
SELECT m.MemberID, m.MemberName, mt.MembershipTypeName
FROM Members m
RIGHT JOIN Membership_Types mt ON m.MembershipTypeID = mt.MembershipTypeID;

-- 4. Select all Staff with their corresponding Departments
SELECT s.StaffID, s.StaffName, d.DepartmentName
FROM Staff s
RIGHT JOIN Departments d ON s.DepartmentID = d.DepartmentID;

-- 5. Select all Authors with their corresponding Books
SELECT a.AuthorID, a.AuthorName, b.BookTitle
FROM Authors a
RIGHT JOIN Books b ON a.AuthorID = b.AuthorID;

-- 6. Select all Genres with their corresponding Books
SELECT g.GenreID, g.GenreName, b.BookTitle
FROM Genres g
RIGHT JOIN Books b ON g.GenreID = b.GenreID;

-- 7. Select all Publishers with their corresponding Books
SELECT p.PublisherID, p.PublisherName, b.BookTitle
FROM Publishers p
RIGHT JOIN Books b ON p.PublisherID = b.PublisherID;

-- 8. Select all Transactions with their corresponding Members
SELECT t.TransactionID, t.TransactionDate, m.MemberName
FROM Transactions t
RIGHT JOIN Members m ON t.MemberID = m.MemberID;

-- 9. Select all Books with their corresponding Genres
SELECT b.BookID, b.BookTitle, g.GenreName
FROM Books b
RIGHT JOIN Genres g ON b.GenreID = g.GenreID;

-- 10. Select all Books with their corresponding Publishers (Duplicate of 1)
SELECT b.BookID, b.BookTitle, p.PublisherName
FROM Books b
RIGHT JOIN Publishers p ON b.PublisherID = p.PublisherID;