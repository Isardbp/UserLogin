drop database if exists USERTESTS;
#DROP TABLE IF EXISTS USERS;
#DROP TABLE IF EXISTS PASSWORDS;

CREATE DATABASE USERTESTS;

use USERTESTS;
CREATE table PASSWORDS(
id_Password integer not null,
password varchar(64),
primary key (id_Password)
);

CREATE table USERS(
id integer not null auto_increment,
id_Password integer not null,
name varchar(64),
cognom varchar(64),
cognom2 varchar(64),
edat int,
primary key (id),
foreign key (id_Password) references PASSWORDS(id_Password)
);

