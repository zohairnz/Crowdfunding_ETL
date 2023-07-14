--Drop tables if they already exist--
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

select *
from campaign

create table campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description text not null,
	goal float not null,
    pledged float not null,
    outcome varchar(100) not null,
    backers_count int not null,
    country varchar(5) not null,
    currency varchar(5) not null,
    launch_date date not null,
    end_date date not null,
    category_id varchar(15) not null,
    subcategory_id varchar(15) not null,
	primary key (cf_id)
);

select *
from category

create table category (
	category_id varchar(15) not null,
	category varchar (35) not null,
	primary key (category_id)
);

select *
from contacts

create table contacts (
	contact_id int not null,
	first_name varchar (35) not null,
	last_name varchar (35) not null,
	email varchar (50) not null,
	primary key (contact_id)
);

select *
from subcategory

create table subcategory (
	subcategory_id varchar (25) not null,
	subcategory varchar (35) not null,
	primary key (subcategory_id)
);

