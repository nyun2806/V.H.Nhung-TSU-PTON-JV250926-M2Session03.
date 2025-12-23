CREATE DATABASE library_management ;
USE library_management ;

CREATE TABLE books(
	book_id INT PRIMARY KEY,
    book_name VARCHAR(255) NOT NULL
);
CREATE TABLE readers(
	reader_id INT PRIMARY KEY,
    reader_name VARCHAR(255) NOT NULL
);
CREATE TABLE borrowings(
	borrow_id INT PRIMARY KEY,
    borrow_date DATE,
    return_date DATE,
    reader_id INT,
	FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    book_id INT,
	FOREIGN KEY (book_id) REFERENCES books(book_id)
);
ALTER TABLE borrowings 
MODIFY COLUMN borrow_date DATE NOT NULL;