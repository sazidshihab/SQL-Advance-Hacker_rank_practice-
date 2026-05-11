-- Active: 1774469870130@@127.0.0.1@3306@185. Department Top Three Salaries
create database `1907. Count Salary Categories`;

use `1907. Count Salary Categories`;

create table Accounts(
    account_id int,
    income int
);

insert into  Accounts VALUES
(3     ,108939),
(2          ,12747),
(8,         87709),
(6,          91796);


select 
'Low Salary' as category,
sum(if(income<20000,1,0)) as accounts_count
from Accounts

union

select 'Average Salary' as category,
sum(if(income<=50000 and income>=20000, 1 ,0)) as accounts_count
from Accounts

union 

select 'High Salary' as category,
sum(if(income>50000, 1,0)) as accounts_count
from Accounts;
