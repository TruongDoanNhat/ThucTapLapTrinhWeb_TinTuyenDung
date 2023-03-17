DROP TABLE  iF EXISTS image;
CREATE TABLE image(
id INT  AUTO_INCREMENT PRIMARY KEY,
url TEXT,
type VARCHAR(16),
createDate Date NOT NULL,
updateDate DATE
);
DROP TABLE  IF EXISTS company;
CREATE TABLE company(
id INT AUTO_INCREMENT PRIMARY KEY,
imageId INT REFERENCES image(id),
name TEXT,
phone TEXT,
address TEXT,
description MEDIUMTEXT,
createDate DATE not NULL,
updateDate DATE
);
DROP TABLE IF EXISTS account;
CREATE TABLE account(
id INT AUTO_INCREMENT PRIMARY KEY,
companyId INT REFERENCES company(id),
email TEXT not NULL,
username VARCHAR(128) not NULL,
password VARCHAR(128) not NULL,
name TEXT,
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
createDate DATE NOT NULL
);
DROP TABLE  iF EXISTS post;
CREATE TABLE post(
id INT AUTO_INCREMENT PRIMARY KEY,
categoryId int REFERENCES category(id),
accountId int REFERENCES account(id),
tittle TEXT,
quantity VARCHAR(128),
salary TINYTEXT,
address MEDIUMTEXT,
type VARCHAR(128),
rank VARCHAR(128),
gen VARCHAR(128),
description TEXT,
rights TEXT,
request TEXT,
status VARCHAR(16),
createDate DATE NOT NULL,
endDate DATE not NULL
);
DROP TABLE  iF EXISTS postApplied;
CREATE TABLE postApplied(
id INT AUTO_INCREMENT PRIMARY KEY,
accountId int not NULL REFERENCES account(id),
postId int not NULL REFERENCES post(id),
fileCV TEXT,
createDate DATE not NULL
);
DROP TABLE  iF EXISTS bill;
create table bill(
id INT AUTO_INCREMENT PRIMARY KEY,
postId int not NULL REFERENCES post(id),
createDate DATE not NULL
);