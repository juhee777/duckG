DROP TABLE member;

CREATE TABLE member (
	member_id	varchar2(20)		NOT NULL,
	member_no	number		NOT NULL,
	member_pw	varchar2(20)		NULL,
	member_name	varchar2(20)		NULL,
	email	varchar2(50)		NULL,
	phone	varchar2(20)		NULL,
	address	varchar2(200)		NULL,
	created_date	date		NULL,
	management	char(2)	DEFAULT 'U'	NULL
);

DROP TABLE product;

CREATE TABLE product (
	product_no	number		NOT NULL,
	member_id	varchar2(20)		NOT NULL,
	product_name	varchar2(200)		NULL,
	image	varchar2(100)		NULL,
	price	number		NULL,
	category_name	varchar2(50)		NULL,
	create_date	date		NULL,
	stock	number		NULL,
	main_info	varchar2(4000)		NULL,
	semi_info	varchar2(100)		NULL,
	discount	number		NULL,
	sales	number		NULL
);


DROP TABLE cart;

CREATE TABLE cart (
	cart_no	number		NOT NULL,
	product_no	number		NOT NULL,
	member_id	varchar2(20)		NOT NULL,
	count	number		NULL
);


DROP TABLE qna;

CREATE TABLE qna (
	qna_no	number		NOT NULL,
	product_no	number		NOT NULL,
	member_id	varchar2(20)		NOT NULL,
	qna_content	varchar2(200)		NULL,
	qna_title	varchar2(50)		NULL,
	qna_answer	varchar2(200)		NULL
);


DROP TABLE jjim;

CREATE TABLE jjim (
	member_id	varchar2(20)		NOT NULL,
	product_no	number		NOT NULL
);


DROP TABLE review;

CREATE TABLE review (
	review_no	number		NOT NULL,
	product_no	number		NOT NULL,
	member_id	varchar2(20)		NOT NULL,
	review_content	varchar2(200)		NULL,
	review_score	number		NULL,
	review_image	varchar2(100)		NULL,
	create_date	date		NULL
);


DROP TABLE ordered;

CREATE TABLE ordered (
	order_no	number		NOT NULL,
	member_id	varchar2(20)		NOT NULL,
	product_no	number		NOT NULL,
	count	number		NULL,
	how_much	number		NULL,
	bought_date	date		NULL
);


ALTER TABLE member ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	member_id
);

ALTER TABLE product ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	product_no
);

ALTER TABLE cart ADD CONSTRAINT PK_CART PRIMARY KEY (
	cart_no
);

ALTER TABLE qna ADD CONSTRAINT PK_QNA PRIMARY KEY (
	qna_no
);

ALTER TABLE review ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	review_no
);

ALTER TABLE ordered ADD CONSTRAINT PK_ORDERED PRIMARY KEY (
	order_no
);

ALTER TABLE product ADD CONSTRAINT FK_member_TO_product_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE cart ADD CONSTRAINT FK_product_TO_cart_1 FOREIGN KEY (
	product_no
)
REFERENCES product (
	product_no
);

ALTER TABLE cart ADD CONSTRAINT FK_member_TO_cart_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE qna ADD CONSTRAINT FK_product_TO_qna_1 FOREIGN KEY (
	product_no
)
REFERENCES product (
	product_no
);

ALTER TABLE qna ADD CONSTRAINT FK_member_TO_qna_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE jjim ADD CONSTRAINT FK_member_TO_jjim_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE jjim ADD CONSTRAINT FK_product_TO_jjim_1 FOREIGN KEY (
	product_no
)
REFERENCES product (
	product_no
);

ALTER TABLE review ADD CONSTRAINT FK_product_TO_review_1 FOREIGN KEY (
	product_no
)
REFERENCES product (
	product_no
);

ALTER TABLE review ADD CONSTRAINT FK_member_TO_review_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE ordered ADD CONSTRAINT FK_member_TO_ordered_1 FOREIGN KEY (
	member_id
)
REFERENCES member (
	member_id
);

ALTER TABLE ordered ADD CONSTRAINT FK_product_TO_ordered_1 FOREIGN KEY (
	product_no
)
REFERENCES product (
	product_no
);

--alter table member
--modify management default 'U';

create sequence cart_seq;
create sequence jjim_seq;
create sequence member_seq;
create sequence ordered_seq;
create sequence product_seq;
create sequence qna_seq;
create sequence review_seq;