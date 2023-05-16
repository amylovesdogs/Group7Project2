drop table category

CREATE TABLE category(

	category_id VARCHAR(10) primary key,
	subcategory VARCHAR(50)
)
drop table subcategory

CREATE TABLE cateory((

	subcategory_id VARCHAR(10) primary key,
	subcategory VARCHAR(50)

)

drop table category

CREATE TABLE category(

	category_id VARCHAR(10) primary key,
	categoyry VARCHAR(50)
)
drop table subcategory

CREATE TABLE cateory((

	subcategory_id VARCHAR(10) primary key,
	subcategory VARCHAR(50)

)
select * from subcategory

drop table category

CREATE TABLE category(

	category_id VARCHAR(10) primary key,
	subcategory VARCHAR(50)
)
drop table subcategory

CREATE TABLE cateory((

	subcategory_id VARCHAR(10) primary key,
	subcategory VARCHAR(50)

)

drop table campaign

CREATE TABLE campaign(

	cf_id INTEGER primary key,
	contact_id INTEGER,
	company_name VARCHAR (50),
	description VARCHAR (100),
	goal MONEY,
	pledged MONEY,
	outcome VARCHAR (50),
	backers_count INTEGER,
	country VARCHAR (2),
	currenty VARCHAR (3),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR (5),
	subcategory_id VARCHAR (10),
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

select * from campaign