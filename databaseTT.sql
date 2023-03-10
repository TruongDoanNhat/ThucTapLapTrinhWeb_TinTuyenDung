DROP TABLE  iF EXISTS image;
CREATE TABLE image(
id INT  AUTO_INCREMENT PRIMARY KEY,
url  TEXT,
type VARCHAR(16)
);
DROP TABLE  IF EXISTS company;
CREATE TABLE company(
id INT AUTO_INCREMENT PRIMARY KEY,
imageId VARCHAR(128) REFERENCES image(id),
name TEXT,
phone TEXT,
address TEXT,
description MEDIUMTEXT,
createDate DATE not NULL
);
DROP TABLE IF EXISTS account;
CREATE TABLE account(
id INT AUTO_INCREMENT PRIMARY KEY,
companyId INT REFERENCES company(id),
email TEXT not NULL,
username VARCHAR(128) not NULL,
password VARCHAR(128) not NULL,
name TEXT,
fileCV TEXT,
type TINYINT not NULL,
role TINYINT not NULL,
status TINYINT not NULL,
createDate DATE not NULL,
updateDate DATE
);
DROP TABLE  iF EXISTS category;
CREATE TABLE category(
id INT AUTO_INCREMENT PRIMARY KEY,
name TEXT,
createDate DATE
);
DROP TABLE  iF EXISTS post;
CREATE TABLE post(
id INT AUTO_INCREMENT PRIMARY KEY,
companyId int REFERENCES company (id),
categoryId int REFERENCES category(id),
accountId int REFERENCES account(id),
tittle TEXT,
salary TINYTEXT,
address MEDIUMTEXT
);
DROP TABLE  iF EXISTS postDetail;
CREATE TABLE postDetail(
postId INT not NULL REFERENCES post (id),
quanity VARCHAR(128),
type VARCHAR(128),
rank VARCHAR(128),
gender VARCHAR(128),
description TEXT,
rights TEXT,
request TEXT,
createDate DATE,
dateEnd date,
status VARCHAR(16)

);
DROP TABLE  iF EXISTS postApplied;
CREATE TABLE postApplied(
accountId int not NULL REFERENCES account(id),
postId int not NULL REFERENCES post(id),
appliedDate DATE not NULL
);
DROP TABLE  iF EXISTS bill;
create table bill(
id INT AUTO_INCREMENT PRIMARY KEY,
postId int not NULL REFERENCES post(id),
payDate DATE
);