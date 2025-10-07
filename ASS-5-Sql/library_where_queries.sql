-- SQL Queries using WHERE clause in a Library Database

-- 1. Books published in 2023
SELECT * FROM Books WHERE publication_year = 2023;

-- 2. Members with expired membership
SELECT * FROM Members WHERE membership_expiry < CURDATE();

-- 3. Staff with role 'Librarian'
SELECT * FROM Staff WHERE role = 'Librarian';

-- 4. Transactions with fine greater than 0
SELECT * FROM Transactions WHERE fine > 0;

-- 5. Genres with genre_name 'Science Fiction'
SELECT * FROM Genres WHERE genre_name = 'Science Fiction';

-- 6. Publishers from USA
SELECT * FROM Publishers WHERE country = 'USA';

-- 7. Membership_Types with borrowing_limit greater than 5
SELECT * FROM Membership_Types WHERE borrowing_limit > 5;

-- 8. Authors whose last_name starts with 'B'
SELECT * FROM Authors WHERE last_name LIKE 'B%';

-- 9. Book_Authors with author_id 1
SELECT * FROM Book_Authors WHERE author_id = 1;

-- 10. Book_Genres with genre_id 2
SELECT * FROM Book_Genres WHERE genre_id = 2;

-- 11. Books with title containing 'Database'
SELECT * FROM Books WHERE title LIKE '%Database%';

-- 12. Members with phone_number starting with '123'
SELECT * FROM Members WHERE phone_number LIKE '123%';

-- 13. Staff who joined in 2022
SELECT * FROM Staff WHERE YEAR(date_of_joining) = 2022;

-- 14. Transactions in the last 30 days
SELECT * FROM Transactions WHERE transaction_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- 15. Genres where genre_name is not 'Fiction'
SELECT * FROM Genres WHERE genre_name != 'Fiction';

-- 16. Publishers not from UK
SELECT * FROM Publishers WHERE country != 'UK';

-- 17. Membership_Types with borrowing_limit less than 10
SELECT * FROM Membership_Types WHERE borrowing_limit < 10;

-- 18. Authors with first_name 'John'
SELECT * FROM Authors WHERE first_name = 'John';

-- 19. Book_Authors with book_id 3
SELECT * FROM Book_Authors WHERE book_id = 3;

-- 20. Book_Genres with book_id 4
SELECT * FROM Book_Genres WHERE book_id = 4;

-- 21. Books published before 2000
SELECT * FROM Books WHERE publication_year < 2000;

-- 22. Members with membership_status 'Inactive'
SELECT * FROM Members WHERE membership_status = 'Inactive';

-- 23. Staff whose role is not 'Manager'
SELECT * FROM Staff WHERE role != 'Manager';

-- 24. Transactions with fine equal to 0
SELECT * FROM Transactions WHERE fine = 0;

-- 25. Genres whose genre_name starts with 'H'
SELECT * FROM Genres WHERE genre_name LIKE 'H%';