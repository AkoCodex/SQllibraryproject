SELECT * FROM books

SELECT * FROM customers

SELECT * FROM loans

SELECT * FROM books WHERE genre = "Fantasia"

SELECT * FROM customers WHERE telephone IS NOT NULL

SELECT * FROM loans WHERE status = "late" OR status = "borrowed"

SELECT * FROM books WHERE price > 50

SELECT * FROM loans WHERE loan_date > "2025-05-10"

SELECT * FROM books WHERE quantity_of_copies_available < 5

SELECT * FROM loans WHERE status = "late"

SELECT * FROM books ORDER BY price DESC

SELECT * FROM customers ORDER BY name

SELECT * FROM loans ORDER BY loan_previst_devolution_date

SELECT * FROM books ORDER BY publish_year DESC

SELECT books.title, customers.name, loans.loan_date, loans.loan_previst_devolution_date, loans.loan_return_date, loans.status FROM loans 
JOIN books ON  loaned_book = books_id  
JOIN customers ON  customer = customers_id  

SELECT books.title, customers.name, loans.loan_date, loans.loan_previst_devolution_date, loans.loan_return_date, loans.status FROM loans
JOIN books ON  loaned_book = books_id  
JOIN customers ON  customer = customers_id  
WHERE status = "late"

SELECT books.title, customers.name, loans.loan_date, loans.loan_previst_devolution_date, loans.loan_return_date, loans.status FROM loans
JOIN books ON  loaned_book = books_id  
JOIN customers ON  customer = customers_id  
WHERE status = "returned"

SELECT genre, COUNT(*) FROM books
GROUP BY genre 

SELECT customers.name, COUNT(*) AS total_loans FROM loans
JOIN customers ON customer = customers_id 
GROUP BY customer

SELECT books.title, count(*) AS loans_quantity from loans
JOIN books ON loaned_book = books_id
GROUP BY loaned_book
ORDER BY count(*) DESC

SELECT books.title, count(*) AS late_loans from loans
JOIN books ON loaned_book = books_id
WHERE status = "late"
GROUP BY loaned_book, books.title
ORDER BY count(*) DESC

SELECT * FROM loans WHERE loan_return_date > loan_previst_devolution_date OR status = "late"

SELECT books.title, count(*) AS times_borrowed FROM loans
JOIN books ON loaned_book = books_id
GROUP BY loaned_book, books.title
ORDER BY count(*) DESC
LIMIT 3

SELECT customers.name, count(*) AS times_borrowed FROM loans 
JOIN customers ON customer = customers_id 
GROUP BY customer, customers.name 
ORDER BY count(*) DESC LIMIT 1

SELECT genre, avg(price) AS avg_price FROM books 
GROUP BY genre

SELECT customers.name, count(*) AS late_loans FROM loans 
JOIN customers ON customer = customers_id 
WHERE status = "late" 
GROUP BY customer, customers.name 
ORDER BY count(*) DESC LIMIT 5

SELECT books.title, loans.loaned_book FROM books 
LEFT JOIN loans ON books_id = loaned_book 
WHERE loans.loaned_book IS NULL

SELECT customers.name FROM customers 
LEFT JOIN loans ON customers_id = customer 
WHERE loans.customer IS NULL
