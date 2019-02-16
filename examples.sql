

/*
Datatypes:

INT           Whole numbers
DECIMAL(M,N)  Decimal numbers, M total digits with N digits after decimal point
VARCHAR(1)    String of text of length 1
BLOB          Binary large object, store large data
DATE          YYYY-MM-DD
TIMESTAMP     YYYY-MM-DD HH:MM:SS

Other comparison ops:

=
>
<
<=
>=
<>  not equal
AND
OR

*/


---------------table manipulation------------------

/*
CREATE TABLE student (
	student_id INT PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20)
);

ALTER TABLE student ADD gpa DECIMAL(3, 2); 


CREATE TABLE teacher (
	teacher_id INT,
	name VARCHAR(20),
	major VARCHAR(20),
	PRIMARY KEY(teacher_id)
);

DROP TABLE student;

PRAGMA TABLE_INFO([student]);

ALTER TABLE student DROP COLUMN gpa;

*/


--------------add entries-------------------


/*
SELECT * FROM student;

INSERT INTO student VALUES(1, 'Jack', 'Math', 3.10);
-- supply partial entries
INSERT INTO student(student_id, name) VALUES(2, 'Andy');
INSERT INTO student VALUES(3, 'Mike', 'CS', 3.20);
INSERT INTO student VALUES(4, 'Mike', 'English', 3.40);
INSERT INTO student VALUES(5, 'Jack', 'Biology', 4.00);
*/

--------------constraints------------------

/*
DROP TABLE student2;

CREATE TABLE student2 (
	student_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20) DEFAULT 'undecided',
	gpa DECIMAL(3, 2) UNIQUE

);
*/

-- INSERT INTO student2 VALUES(1, 'Mike', 'CS', 3.20);
-- INSERT INTO student2 VALUES(2, 'Mike', 'English', 3.40);
-- INSERT INTO student2 VALUES(3, 'Jack', 'Biology', 4.00);
-- INSERT INTO student2 VALUES(4, 'Dan', 'Biology', 4.00);
-- INSERT INTO student2 VALUES(4, 'Bitch', NULL, 4.20);
-- INSERT INTO student2(student_id, name) VALUES(5, 'Andy');

-- INSERT INTO student2(name, major) VALUES('Andy', 'CS');
-- INSERT INTO student2(name, major) VALUES('Mike', 'Math');
-- INSERT INTO student2(name, major) VALUES('Bitch', 'Biology');

------------remove rows------------

-- UPDATE student2
-- SET major = 'Bio', name = 'Tom'
-- WHERE student_id = 1 AND major = 'undecided';

-- -- DELETE FROM student; delete all rows from student table

-- DELETE FROM student2
-- WHERE student_id = 3;

-----------basic queries---------------

SELECT student2.student_id, student2.name, student2.major
FROM student2
WHERE student2.major = "Math"
ORDER BY name DESC, student_id DESC
LIMIT 3; /*only get 3 rows*/

SELECT student2.student_id, student2.name, student2.major
FROM student2
WHERE student2.major in ("Math", "CS") AND  student_id > 2
ORDER BY name;














