CREATE DATABASE [Electcenter11]
GO

USE [Electcenter11]
GO

/************/

create table customer
(customerNum char(3) not null primary key,
 customerName nvarchar(50) not null,
 Address1 nvarchar(50) not null,
 Phone char(10) not null
);
GO

/************/

create table Device
(DeviceNum char(3) not null primary key,
 DeviceName nvarchar(100) not null,
 customerNum char(3) not null foreign key references customer(customerNum),
 date1 datetime not null,
 cost int not null
);
GO