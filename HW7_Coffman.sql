SELECT  DISTINCT author
FROM book
WHERE publisher = 'Penguin' AND price > 10; 

SELECT title, publisher, price
FROM book
WHERE author is null;
 
TITLE PUBLISHER PRICE
Is Your Dog Walking You? Kensington 10
Tips for Success Kensington 13
 
SELECT book_id, title, ROUND(no_of_pages / 100,0) as no_of_points
FROM book;
 

SELECT UPPER(publisher), title, 'Selling price $' || price || '.'
FROM book
WHERE price between 3 and 6
ORDER BY publisher;
 
SELECT branch_id, branch_name, no_of_copies
FROM library_branch NATURAL JOIN book_copies NATURAL JOIN book
WHERE branch_name = 'Newport Branch' 
AND title = 'The Lost Tribe';
 
(SELECT card_no 
FROM borrower)
MINUS
(SELECT card_no
from book_loans);
 