-- Drop table if any

drop table user;
drop table address;

-- add ADDRESS table
CREATE TABLE Address (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
street VARCHAR(255) NOT NULL,
city VARCHAR(100) NOT NULL,
country VARCHAR(100) NOT NULL,
state VARCHAR(100) NOT NULL,
zip_code VARCHAR(10) NOT NULL
);

-- add USER table

create table User (
id int not null auto_increment, 
user_name varchar(255) not null, 
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
address_id INT,
FOREIGN KEY (address_id) REFERENCES address(id)
);


-- insert ADDRESS records
insert into address (street, city, country, state, zip_code) values ('1366 Park Street', 'Bowling Green', 'United States', 'KY', '42101');
insert into address (street, city, country, state, zip_code) values ('3420 Durello Cir', 'Rancho Cordova', 'United States', 'CA', '95670');

--insert USER records

INSERT INTO User(user_name,first_name,last_name,address_id) VALUES ('admin','admin','admin',1);

INSERT INTO User(user_name,first_name,last_name,address_id)VALUES ('jdoe','john','doe',2);

INSERT INTO User(user_name,first_name,last_name,address_id)VALUES ('stis.com','sham','tis',1);