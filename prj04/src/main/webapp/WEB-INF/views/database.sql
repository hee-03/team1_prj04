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
