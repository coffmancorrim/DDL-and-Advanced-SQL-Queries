SELECT book_id, title
FROM book
WHERE price >= all (SELECT price
                    FROM book
                    );

SELECT publisher, count(title) as nr_of_books
FROM book
GROUP BY publisher
ORDER BY nr_of_books desc;

SELECT card_no, count(DISTINCT book_id) as nr_of_books
FROM book_loans
WHERE card_no IN (
                SELECT card_no
                FROM borrower
                )
GROUP BY card_no
HAVING count(book_id) >= 5
ORDER BY nr_of_books;

SELECT book_id, title
FROM book
WHERE book_id NOT IN (
                    SELECT book_id
                    FROM book_loans
                    );

UPDATE book
SET price = case
                WHEN price < 10 then price * 1.1
                else  price * 1.05
            end;

DELETE FROM book_loans
WHERE card_no IN (
                SELECT card_no
                FROM borrower
                WHERE name LIKE 'S%'
                )