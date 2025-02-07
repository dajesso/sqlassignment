-- insert users into database

insert into users (name, email, payment_id) values ('Felicis', 'felicis@jessicaamy.com', '1024');
insert into users (name, email, payment_id) values ('Jessica', 'jessica@jessicaamy.com', '2048');
insert into users (name, email, payment_id) values ('Melissa', 'melissa@jessicaamy.com', '4096');

-- insert animals into database

insert into animals (name, species) values ('Felicis', 'Panda');
insert into animals (name, species) values ('Jessica', 'Penguin');
insert into animals (name, species) values ('Melissa', 'Polar Bear');

-- insert enclousures into database

insert into enclousures (name, location, animal_id) values ('panda enclousures', 'north', 1);
insert into enclousures (name, location, animal_id) values ('penguin enclousures', 'south', 2);
insert into enclousures (name, location, animal_id) values ('polar bear enclousures', 'east', 3);

-- insert into database the food and fees

insert into food (name, price, animal_id) values ('KFC', 30, 1);
insert into food (name, price, animal_id) values ('Fish', 20, 2);
insert into food (name, price, animal_id) values ('Berries', 10, 2);
insert into food (name, price, animal_id) values ('Vistors', 10, 3);
insert into food (name, price, animal_id) values ('Melissa', 10, 3);

-- fees inserted into database

insert into fees (name, price, animal_id) values ('Panda Experience', 100, 1);
insert into fees (name, price, animal_id) values ('Penguin Experience', 50, 2);
insert into fees (name, price, animal_id) VALUES ('Polar Bear Experience', 85, 3);

-- update the enclousre name

update enclousures set name = 'melissa enclosures' where id = 3;

-- delete from melissa from users.

delete from users where id = 3;

-- join fees and animal


select animals.name, animals.species, food.name from animals right join food on animals.id = food.animal_id;

-- now to add all the numbers total sum of all items of food

select sum(price) from food;

-- now to add all the numbers total sum of all items of fees

select sum(price) from fees;