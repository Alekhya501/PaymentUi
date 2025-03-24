
 use payapp;
 

 
 CREATE TABLE user_details (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(255)
);
select *from user_details;
Select * from user_details where user_name='Grandhi Alekhya' And password=123;
SELECT * FROM user_details WHERE user_name = 'Grandhi Alekhya';


CREATE TABLE bankaccounts (
    bank_account_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    account_no VARCHAR(50) UNIQUE NOT NULL,
    account_type ENUM('Active', 'Inactive') NOT NULL,
    ifsc VARCHAR(20) NOT NULL,
    balance DECIMAL(15,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user_details(user_id)
);


select *from bankaccounts;
select *from bankaccounts  where user_id=1;