-- Active: 1774469870130@@127.0.0.1@3306@185. Department Top Three Salaries
create database `1393. Capital Gain/Loss`;


use `1393. Capital Gain/Loss`;

create table Stocks(stock_name varchar(255), operation enum('Sell', 'Buy'), operation_day int, price int);

insert into Stocks values
('Leetcode', 'Buy', 1, 1000),
('Corona Masks', 'Buy', 2, 10),
('Leetcode', 'Sell', 5, 9000),
('Handbags', 'Buy', 17, 30000),
('Corona Masks', 'Sell', 3, 1010),
('Corona Masks', 'Buy', 4, 1000),
('Corona Masks', 'Sell', 5, 500),
('Corona Masks', 'Buy', 6, 1000),
('Handbags', 'Sell', 29, 7000),
('Corona Masks', 'Sell', 10, 10000);


SELECT 
    stock_name,
    SUM(if(operation='Sell', price, -price) ) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;