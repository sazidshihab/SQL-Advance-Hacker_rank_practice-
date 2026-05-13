-- Active: 1774469870130@@127.0.0.1@3306@177. Nth Highest Salary
create database `178. Rank Scores`;
use `178. Rank Scores`;

create table Scores (
    id int,
    score decimal(10,2)
);

insert into Scores (id, score) values (1, 3.50);
insert into Scores (id, score) values (2, 3.65);
insert into Scores (id, score) values (3, 4.00);
insert into Scores (id, score) values (4, 3.85);
insert into Scores (id, score) values (5, 4.00);
insert into Scores (id, score) values (6, 3.65);


select
    score,
    dense_rank() over (order by score desc) as 'rank'
from Scores;