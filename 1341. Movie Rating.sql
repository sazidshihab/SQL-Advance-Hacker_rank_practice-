-- Active: 1774469870130@@127.0.0.1@3306@185. Department Top Three Salaries
create database `1341. Movie Rating`;

use `1341. Movie Rating`;

create table Movies(
    movie_id int,
    title varchar(255)
);  

create table Users(
    user_id int,
    name varchar(255)
);

create table MovieRating(
    movie_id int,
    user_id int,
    rating int,
    created_at date
);

insert into Movies VALUES(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

insert into Users VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');


insert into MovieRating VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');


with cte as(
    select b.name, count(a.user_id) as cnt from MovieRating a join Users b
    on a.user_id=b.user_id
    group by 1
    order by cnt desc,b.name
    limit 1
), cte1 as(
 select b.title, avg(a.rating) as cnt1 from MovieRating a join Movies b
 on a.movie_id=b.movie_id
    where a.created_at between '2020-02-01' and '2020-02-29'
    group by 1
    order by cnt1 desc, b.title
    limit 1
)
select name as results  from cte
union all
select title as results  from cte1
;

