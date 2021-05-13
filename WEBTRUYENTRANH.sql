﻿
create database WEB_TRUYEN_TRANH
USE WEB_TRUYEN_TRANH


CREATE TABLE USERS(
	 ID INT IDENTITY(1,1) NOT NULL UNIQUE,
	 FULLNAME NVARCHAR(50) NOT NULL,
	 EMAIL VARCHAR(50) NOT NULL,
	 PHONE VARCHAR(10) NOT NULL,
	 USERNAME VARCHAR(50),
	 PASSWORD VARCHAR(50) NOT NULL,
	 PRIMARY KEY (USERNAME)
)
CREATE TABLE COMICS(
	ID INT IDENTITY(1,1),
	TITLE NVARCHAR(50) NOT NULL,
	DESCRIPTION NVARCHAR(50) NOT NULL,
	IMG_URL VARCHAR(50) NOT NULL,
	AUTHOR NVARCHAR(50) NOT NULL,
	STATUS NVARCHAR(50) NOT NULL,
	VIEWS INT DEFAULT 0,
	PRIMARY KEY (ID)
)
CREATE TABLE CHAPTERS(
	CHAPTER INT IDENTITY(0,1),
	CHAPTER_CONTENT_URL VARCHAR(50) NOT NULL,
	COMICID INT NOT NULL,
	PRIMARY KEY (CHAPTER, CHAPTER_CONTENT_URL),
	CONSTRAINT FK_CHAPTER_COMICID_COMIC FOREIGN KEY (COMICID) REFERENCES COMICS(ID)
)
CREATE TABLE COMMENTS (
	ID INT IDENTITY(1,1),
	COMICID INT NOT NULL,
	USERID INT NOT NULL,
	COMMENT NVARCHAR(200) NOT NULL,
	CREATED DATETIME,
	PRIMARY KEY (ID),
	CONSTRAINT FK_COMMENT_COMICID_COMIC FOREIGN KEY (COMICID) REFERENCES COMICS(ID),
	CONSTRAINT FK_COMMENT_USERID_COMIC FOREIGN KEY (USERID) REFERENCES USERS(ID),
)
CREATE TABLE TAGS(
	TAG NVARCHAR(50),
	COMICID INT NOT NULL,
	PRIMARY KEY (TAG, COMICID),
	CONSTRAINT FK_TAG_COMICID_COMIC FOREIGN KEY (COMICID) REFERENCES COMICS(ID),
)
CREATE TABLE INTERACTIONS(
	COMICID INT,
	USERID INT,
	FAVOR BIT DEFAULT 0,
	DISFAVOR BIT DEFAULT 0,
	FOLLOW BIT DEFAULT 0,
	PRIMARY KEY (COMICID, USERID),
	CONSTRAINT FK_INTERACTION_COMICID_COMIC FOREIGN KEY (COMICID) REFERENCES COMICS(ID),
	CONSTRAINT FK_INTERACTION_USERID_COMIC FOREIGN KEY (USERID) REFERENCES USERS(ID),
)
CREATE TABLE HISTORIES(
	USERID INT,
	COMICID INT,
	CREATED DATETIME,
	ISREAD BIT DEFAULT 0,
	PRIMARY KEY (COMICID, USERID),
	CONSTRAINT FK_HISTORY_COMICID_COMIC FOREIGN KEY (COMICID) REFERENCES COMICS(ID),
	CONSTRAINT FK_HISTORY_USERID_COMIC FOREIGN KEY (USERID) REFERENCES USERS(ID),
)

/*LỆNH KIỂM TRA THUỘC TÍNH BẢNG*/
EXEC sp_help USERS

SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS

insert into USERS (FULLNAME, EMAIL, PHONE, USERNAME, PASSWORD) 
VALUES (N'Nguyễn Đỗ Tường Phát','tuongphat208@gmail.com','12345689','tuongphat','tuongphat123')
insert into USERS (FULLNAME, EMAIL, PHONE, USERNAME, PASSWORD) 
VALUES(N'Lường Thị Thu Nguyệt','18520329@gm.uit.edu.vn','123456789','thunguyet','123')
select * from USERS
delete from USERS