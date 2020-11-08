CREATE DATABASE PIJava;

USE PIJava;

CREATE TABLE USERS (
    USER_ID INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
    USER_NAME VARCHAR(15) NOT NULL,
    USER_LOGIN VARCHAR(15) UNIQUE NOT NULL,
    USER_PASSWORD VARCHAR(15) NOT NULL,
    USER_ADMIN BOOLEAN NOT NULL
);

CREATE TABLE SUPPLIER (
    SUPPLIER_ID INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
    SUPPLIER_CNPJ VARCHAR(14) NOT NULL UNIQUE,
    SUPPLIER_NAME VARCHAR(30),
    SUPPLIER_SITE VARCHAR(60),
    SUPPLIER_TYPE VARCHAR(10),
);


CREATE TABLE WATER_ACCOUNT (
	ACCOUNT_ID INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
    ACCOUNT_NUMBER VARCHAR(15) NOT NULL,
    ACCOUNT_DUE_DATE VARCHAR(13) NOT NULL,
    ACCOUNT_PENALTY NUMERIC(15,2),
    ACCOUNT_CONSUMPTION NUMERIC(15,2),
    ACCOUNT_POLLUTION  NUMERIC(15,2),
    ACCOUNT_SEWER NUMERIC(15,2),
    ACCOUNT_WATER NUMERIC(15,2),
    ACCOUNT_PIS INT(2),
    ACCOUNT_OTHERS NUMERIC(15,2),
    ACCOUNT_SUPPLIER_CNPJ VARCHAR(14),
    CONSTRAINT FK_WATERSUPPLIERS FOREIGN KEY (ACCOUNT_SUPPLIER_CNPJ) REFERENCES SUPPLIER (SUPPLIER_CNPJ)
);

