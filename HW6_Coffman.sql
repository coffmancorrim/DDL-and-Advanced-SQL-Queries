drop table book_loans;
drop table book_copies;
drop table book;
drop table library_branch;
drop table borrower;

create table book
(book_id numeric (8,0),
title varchar (30),
publisher varchar (30),
author varchar (30),
price numeric(4,2),
primary key (book_id));

create table library_branch
(branch_id numeric (8,0),
branch_name varchar (30),
address varchar (50),
primary key (branch_id));

create table book_copies
(book_id numeric (8,0),
branch_id numeric (8,0),
no_of_copies numeric (4,0),
primary key (book_id, branch_id),
foreign key (book_id)references book,
foreign key (branch_id)references library_branch);

create table borrower
(card_no numeric (8,0),
name varchar(30),
address varchar(50),
phone varchar(10),
primary key (card_no));

create table book_loans
(book_id numeric (8,0),
branch_id numeric (8,0),
card_no numeric (8,0),
date_out date,
due_date date,
primary key (book_id, branch_id, card_no),
foreign key (book_id,branch_id) references book_copies,
foreign key (card_no) references borrower);

alter table book add no_of_pages numeric(5,0);

