CREATE TABLE tbl_contact (
	contact_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	contact_phone VARCHAR(50) NOT NULL,
	contact_address VARCHAR(50) NOT NULL
);


CREATE TABLE tbl_name (
	name_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	name_first VARCHAR(50) NOT NULL,
	name_last VARCHAR(50) NOT NULL,
	name_contact INT NOT NULL CONSTRAINT fk_contact_id FOREIGN KEY REFERENCES tbl_contact(contact_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_contact
	(contact_phone, contact_address)
	VALUES 
	('111-111-1111', '111 1st st'),
	('222-222-2222', '222 2nd st')
;
SELECT * FROM tbl_contact


INSERT INTO tbl_name
	(name_first, name_last, name_contact)
	VALUES
	('Joe', 'Shmoe', 100),
	('Mary', 'Sue', 101)
;
SELECT * FROM tbl_name

SELECT
a1.name_first, a1.name_last, a2.contact_phone
FROM tbl_name a1
INNER JOIN tbl_contact a2 ON a2.contact_id = a1.name_contact

