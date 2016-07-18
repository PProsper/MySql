Use Sakila;
select * from film;
select first_name, last_name from actor where last_name like'%son';
select actor.first_name, actor.last_name, film.title, film.description from film inner join actor ON description like '%shark%' And description like '%crocodile%';
select count(name) from language;
select name from language order by name asc;
select count(title) from film where description like '%shark%' And description like '%crocodile%';
