drop database expensetrackerdb;
drop user expensetracker;

create user expensetracker with password 'password';
create database expensetrackerdb with template=template0 owner=expensetracker;
\connect expensetrackerdb;
alter default privileges grant all on tables to expensetracker;
all default privileges grant all on sequences to expensetracker;


