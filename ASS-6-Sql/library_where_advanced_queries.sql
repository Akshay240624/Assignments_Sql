-- SQL Queries using WHERE clause with BETWEEN, LIKE, and comparisons in a Library Database

-- 1. Publishers from India
SELECT * FROM Publishers WHERE country = 'India';

-- 2. Membership_Types with borrowing_limit between 5 and 10
SELECT * FROM Membership_Types WHERE borrowing_limit BETWEEN 5 AND 10;

-- 3. Authors with last_name 'Smith'
SELECT * FROM Authors WHERE last_name = 'Smith';

-- 4. Book_Authors with author_id greater than 2
SELECT * FROM Book_Authors WHERE author_id > 2;

-- 5. Book_Genres with genre_id less than 3
SELECT * FROM Book_Genres WHERE genre_id < 3;

-- 6. Books with title starting with 'A'
SELECT * FROM Books WHERE title LIKE 'A%';

-- 7. Members from New York
SELECT * FROM Members WHERE city = 'New York';

-- 8. Staff who joined after 2020
SELECT * FROM Staff WHERE YEAR(date_of_joining) > 2020;

-- 9. Transactions not in the last 30 days
SELECT * FROM Transactions WHERE transaction_date < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- 10. Genres containing 'Fiction'
SELECT * FROM Genres WHERE genre_name LIKE '%Fiction%';

-- 11. Publishers from Canada
SELECT * FROM Publishers WHERE country = 'Canada';

-- 12. Membership_Types with borrowing_limit not between 5 and 10
SELECT * FROM Membership_Types WHERE borrowing_limit NOT BETWEEN 5 AND 10;

-- 13. Authors with first_name starting with 'A'
SELECT * FROM Authors WHERE first_name LIKE 'A%';

-- 14. Book_Authors where book_id is not 1
SELECT * FROM Book_Authors WHERE book_id != 1;

-- 15. Book_Genres where book_id is not 2
SELECT * FROM Book_Genres WHERE book_id != 2;

-- 16. Books published after 2010
SELECT * FROM Books WHERE publication_year > 2010;

-- 17. Members with membership_status 'Active'
SELECT * FROM Members WHERE membership_status = 'Active';

-- 18. Staff with role 'Administrator'
SELECT * FROM Staff WHERE role = 'Administrator';

-- 19. Transactions with fine between 5 and 20
SELECT * FROM Transactions WHERE fine BETWEEN 5 AND 20;

-- 20. Genres whose genre_name ends with 'y'
SELECT * FROM Genres WHERE genre_name LIKE '%y';

-- 21. Publishers from Australia
SELECT * FROM Publishers WHERE country = 'Australia';

-- 22. Membership_Types with borrowing_limit not less than 10
SELECT * FROM Membership_Types WHERE borrowing_limit >= 10;

-- 23. Authors with last_name ending with 'son'
SELECT * FROM Authors WHERE last_name LIKE '%son';

-- 24. Book_Authors with author_id not less than 3
SELECT * FROM Book_Authors WHERE author_id >= 3;

-- 25. Book_Genres with genre_id not greater than 2
SELECT * FROM Book_Genres WHERE genre_id <= 2;