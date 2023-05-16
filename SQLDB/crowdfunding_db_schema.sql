create table category (
	category_id CHAR(5) primary key,
	category VARCHAR(30)
)

create table subcategory (
	subcategory_id CHAR(8) primary key,
	subcategory VARCHAR(30)
)

create table contacts (
	contact_id int primary key,
	first_name VARCHAR(20),
	last_name VARCHAR(30),
	email VARCHAR(50)
)

CREATE TYPE outcomes AS ENUM ('failed', 'successful', 'canceled', 'live');

create table campaign (
	cf_id int primary key,
	contact_id int,
	company_name VARCHAR(50),
	description VARCHAR(100),
	goal money,
	pledged money,
	outcome outcomes,
	backers_count int,
	country CHAR(2),
	currency CHAR(3),
	launch_date date,
	end_date date,
	category_id CHAR(5),
	subcategory_id CHAR(8),
	CONSTRAINT contact_id FOREIGN KEY(contact_id) 
		REFERENCES contacts(contact_id)
		ON DELETE SET NULL,
	CONSTRAINT category_id FOREIGN KEY(category_id) 
		REFERENCES category(category_id)
		ON DELETE SET NULL,
	CONSTRAINT subcategory_id FOREIGN KEY(subcategory_id) 
		REFERENCES subcategory(subcategory_id)
		ON DELETE SET NULL
)