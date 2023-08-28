
/* Drop Tables */

DROP TABLE pocketMon CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE pocketMon
(
	cid number NOT NULL,
	name varchar2(20) NOT NULL,
	type varchar2(20) NOT NULL,
	height number NOT NULL,
	weight number NOT NULL,
	viewCount number DEFAULT 0 NOT NULL,
	isDeleted number DEFAULT 0 NOT NULL,
	PRIMARY KEY (cid)
);



