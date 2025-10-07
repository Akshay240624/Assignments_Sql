-- SQL Queries for LEFT JOIN practice in a Library Database

-- 1. Select all Books with their corresponding Genres
SELECT b.BookID, b.BookTitle, g.GenreName
FROM Books b
LEFT JOIN Genres g ON b.GenreID = g.GenreID;

-- 2. Select all Books with their corresponding Authors
SELECT b.BookID, b.BookTitle, a.AuthorName
FROM Books b
LEFT JOIN Authors a ON b.AuthorID = a.AuthorID;

-- 3. Select all Books with their corresponding Publishers
SELECT b.BookID, b.BookTitle, p.PublisherName
FROM Books b
LEFT JOIN Publishers p ON b.PublisherID = p.PublisherID;

-- 4. Select all Members with their corresponding Transactions
SELECT m.MemberID, m.MemberName, t.TransactionID, t.TransactionDate
FROM Members m
LEFT JOIN Transactions t ON m.MemberID = t.MemberID;

-- 5. Select all Members with their corresponding Membership_Types
SELECT m.MemberID, m.MemberName, mt.MembershipTypeName
FROM Members m
LEFT JOIN Membership_Types mt ON m.MembershipTypeID = mt.MembershipTypeID;

-- 6. Select all Staff with their corresponding Departments
SELECT s.StaffID, s.StaffName, d.DepartmentName
FROM Staff s
LEFT JOIN Departments d ON s.DepartmentID = d.DepartmentID;

-- 7. Select all Authors with their corresponding Books
SELECT a.AuthorID, a.AuthorName, b.BookTitle
FROM Authors a
LEFT JOIN Books b ON a.AuthorID = b.AuthorID;

-- 8. Select all Genres with their corresponding Books
SELECT g.GenreID, g.GenreName, b.BookTitle
FROM Genres g
LEFT JOIN Books b ON g.GenreID = b.GenreID;

-- 9. Select all Publishers with their corresponding Books
SELECT p.PublisherID, p.PublisherName, b.BookTitle
FROM Publishers p
LEFT JOIN Books b ON p.PublisherID = b.PublisherID;

-- 10. Select all Transactions with their corresponding Members
SELECT t.TransactionID, t.TransactionDate, m.MemberName
FROM Transactions t
LEFT JOIN Members m ON t.MemberID = m.MemberID;