LESSON_1
##EASY
MS SQL SERVER->DATABASE->SCHEMA->TABLE->ROWS AND COLUMNS
SQL SERVER STORES RELATIONAL DATABASES
SQLs
Relational Databases


SQL COMMANDS
DATA QUERY LANGUAGE (DQL)
DATA DEFINITION LANGUAGE (DDL)
DATA MANIPULATION LANGUAGE (DML)
DATA CONTROL LANGUAGE  (DCL)
TRANSACTION CONTROL LANGUAGE (TCL)

MS SQL SERVER(Microsoft)
MySQL(Oracle)
PostgreSQL(PostgreSQL)

##MEDIUM
CREATE DATABASE homework2
USE homework2
CREATE TABLE Students (StudentID INT, Name VARCHAR(50), Age INT)
SELECT * 
FROM Students
SELECT * FROM Students
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'TEMUR', 20)
SELECT * FROM Students

SSMS - Server bilan ishlaeshda va serverni o'zgartirishda yordam beradi.
MY SQL - bir qurilmada bir qancha server orqali ishlatsa boladi.

##HARD

7.
DQL - 
--QUERY -so'rov
--SELECT -belgilash, buyruq

DDL
--CREATE -databaza yaratish
--ALTER -jadvalni tuzilishini o'zgartirish
--DROP -jadvaldan olish
--TRUNCATE -jadvaldagi barcha datani o'chirish

DML
--INSERT -jadvalga ma'lumotlarni kiritish
--UPDATE -jadvaldagi ma'lumotlarni yangilash
--DELETE -ma'lumotlarni o'chirish

DCL
--GRANT -foydalanuvchiga kirishga ruxsat berish
--REVOKE -barcha foydalanuvchilarga kirishni taqiqlash

TCL
--BEGIN TRAN -
--COMMIT TRAN
--ROLLBACK TRAN 

INSERT INTO Students (StudentID, NAME, Age) VALUES (2, 'AMIR', 24)
select * FROM Students
INSERT INTO Students  VALUES (3, 'Ali', 33)
select * FROM Students
INSERT INTO Students  VALUES (4, 'Bob', 27)
select * FROM Students
