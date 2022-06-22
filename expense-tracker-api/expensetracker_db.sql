drop database expensetrackerdb;
drop user expensetracker;

create user expensetracker with password 'password';
create database expensetrackerdb with template=template0 owner=expensetracker;
\connect expensetrackerdb;
alter default privileges grant all on tables to expensetracker;
all default privileges grant all on sequences to expensetracker;

create table et_users(
user_id integer primary key not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(30) not null,
password text not null,
);

create table et_categories(
category_id integer primary key not null,
user_id integer not null,
title varchar(20) not null,
description varchar(50) not null,
);
alter table et_categories add 

