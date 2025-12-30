CREATE TABLE area_code(
	code NUMBER PRIMARY KEY,
	name varchar2(50)
);
SELECT * FROM area_code;


CREATE TABLE  area_based(
	contentid NUMBER PRIMARY KEY,
	title varchar2(200) NOT null,
	addr1 varchar2(300) NOT null,
	areacode NUMBER NOT null,
	firstimage varchar2(500) NOT null,
	heart number(1) NOT null,
	cat1 varchar2(50) NOT null
);
SELECT * FROM area_based;

CREATE TABLE favorite(
	email varchar2(100) NOT NULL,
	cat1 varchar2(100) ,
	areacode varchar2(100) ,
	contentid varchar2(100) 
);
DROP TABLE favorite;
CREATE TABLE TRIP_USER(
	user_id NUMBER PRIMARY KEY,
	name VARCHAR2(50) NOT NULL,
	email VARCHAR2(100) NOT NULL,
	password VARCHAR2(100) NOT NULL,
	phone_number NUMBER NOT NULL
);
SELECT * FROM TRIP_USER;

CREATE TABLE FESTIVAL(
	festival_id NUMBER PRIMARY KEY,
	festival_name VARCHAR2(100) NOT NULL,
	festival_region VARCHAR2(100) NOT NULL,
	festival_start DATE NOT NULL,
	festival_end DATE NOT NULL,
	festival_heart VARCHAR2(1)	
);
SELECT * FROM FESTIVAL;