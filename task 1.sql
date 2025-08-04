create Database University

use University


create schema library

CREATE TABLE library.Authors (
    author_id INT PRIMARY KEY,
    Name VARCHAR(100) ,
    country VARCHAR(50),
    birth_year INt
);

insert into library.Authors(author_id,Name,country,birth_year) values (1,'jake','UK',1920)
insert into library.Authors(author_id,Name,country,birth_year) values (2,'john','UK',1925)
insert into library.Authors(author_id,Name,country,birth_year) values (3,'mark','USA',1977)

select * from library.Authors

CREATE TABLE library.Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    genre VARCHAR(50),
    published_year INT,
    available_copies INT ,
    FOREIGN KEY (author_id) REFERENCES library.Authors(author_id) on update cascade
)

insert into library.Books(book_id,title,author_id,genre,published_year,available_copies) values (001,'FLAMES',2,'EMOTION',1950,3)
insert into library.Books(book_id,title,author_id,genre,published_year,available_copies) values (002,'HIMALAYAS',3,'ADVENTURE',1998,8)
insert into library.Books(book_id,title,author_id,genre,published_year,available_copies) values (003,'FLAGS',1,'DRAMA',1965,7)

SELECT * FROM library.Books

CREATE TABLE Library.Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) ,
    email VARCHAR(250) UNIQUE,
    phone BIGINT,
    membership_date DATE
);

INSERT INTO Library.Members (member_id, name, email, phone, membership_date)
VALUES (101, 'Alice Johnson', 'alice.johnson@example.com', 9876543210, '2022-01-15');

INSERT INTO Library.Members (member_id, name, email, phone, membership_date)
VALUES (102, 'Bob Smith', 'bob.smith@example.com', 9123456789, '2023-06-10');

INSERT INTO Library.Members (member_id, name, email, phone, membership_date)
VALUES (103, 'Charlie Davis', 'charlie.davis@example.com', 9988776655, '2024-03-05');

select * from Library.Members

CREATE TABLE library.Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES library.Books(book_id),
    FOREIGN KEY (member_id) REFERENCES library.Members(member_id)
);

INSERT INTO library.Loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES (1, 003, 103, '2025-07-01', '2025-07-15');

INSERT INTO library.Loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES (2, 001, 102, '2025-07-03', '2025-07-18');

INSERT INTO library.Loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES (3, 002, 101, '2025-07-05', '2025-07-20');


select* from library.Loans