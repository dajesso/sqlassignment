drop table if exists users;
drop table  if exists animals;
drop table if exists enclousures;


create table users (
    id serial primary key,
    name varchar (50),
    email varchar (150) not null,
    payment_id varchar(200)
);

create table animals (
    id serial primary key,
    name varchar(100) not null,
    species varchar(100) not null
);

create table enclousures (
    id serial primary key,
    name varchar(100) not null,
    location varchar(100) not null,
    animal_id integer not null,
    foreign key (animal_id) references animals(id)
);

-- food and fees

create table food (
    id serial primary key,
    name varchar(100) not null,
    price numeric(10, 2) not null,
    foreign key (animal_id) references animals(id),
    animal_id integer not null
);

create table fees (
    id serial primary key,
    name varchar(100) not null,
    price numeric(10, 2) not null,
    foreign key (animal_id) references animals(id),
    animal_id integer not null
);