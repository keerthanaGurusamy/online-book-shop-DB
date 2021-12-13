create table customer_register(cus_id int PRIMARY KEY,name VARCHAR2(50) NOT NULL,email_id VARCHAR2(100)NOT NULL,password VARCHAR2(100)NOT NULL);

create table customer_details(cus_id int NOT NULL,FOREIGN KEY(cus_id) REFERENCES customer_register(cus_id),ph_no NUMBER NOT NULL,
city VARCHAR2(100) NOT NULL,area VARCHAR2(100) NOT NULL,pincode VARCHAR2(100) NOT NULL);

create table books(book_id int PRIMARY KEY,category VARCHAR2(100),author_id int,FOREIGN KEY(author_id) REFERENCES author_details(author_id),publisher_id int,book_title VARCHAR2(100),book_code VARCHAR2(100),
price int,publish_date date,type VARCHAR2(100),condition VARCHAR2(100));

create table author_details(author_id int PRIMARY KEY,name VARCHAR2(100) NOT NULL,book_id int NOT NULL,FOREIGN KEY(book_id) REFERENCES books(book_id));

create table order_books(order_id int PRIMARY KEY,book_id int NOT NULL,FOREIGN KEY(book_id) REFERENCES books(book_id),quantity int NOT NULL,total_cost int NOT NULL);

create table order(order_id int PRIMARY KEY,cust_id int NOT NULL,FOREIGN KEY(cus_id) REFERENCES customer_register(cus_id),order_date TIMESTAMP default current_timestamp,
status varchar2(50));








desc customer_register;
desc customer_details;
desc books;
desc author_details;

drop table customer_details;
drop table author_details;