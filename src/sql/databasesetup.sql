
CREATE DATABASE "mhspublications";

\c "mhspublications";

CREATE TABLE publications
(
	publicationid int NOT NULL GENERATED ALWAYS AS IDENTITY,
	publicationname varchar(40 )NOT NULL,
	year int NOT NULL,
	PRIMARY KEY (publicationid, publicationname, year)
);

CREATE TABLE advisors
(
	advisorid int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar(40) PRIMARY KEY,
	yearfrom int,
	yearto int
);

INSERT INTO publications(publicationname, year) VALUES
('Redline', 2016),
('The Artesian Herald', 1920),
('The Current', 2015),
('Artesian Yearbook', 1985);



CREATE TABLE heraldissues
(
	publicationid int,
	publicationname varchar(40),
	year int,
	volumenumber int,
	advisorid int
);


INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1920, 1,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1921, 2,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1922, 3,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1923, 4,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1924, 5,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1925, 6,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1926, 7,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1927, 8,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1928, 9,1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1929, 10, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1930, 11, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1931, 12, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1932, 13, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1933, 14, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1934, 15, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1935, 16, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1936, 17, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1937, 18, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1938, 19, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1939, 20, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1941, 21, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1942, 22, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1943, 23, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1944, 24, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1945, 25, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1946, 26, 1);
INSERT INTO heraldissues(publicationid, publicationname, year, volumenumber, advisorid) VALUES (2,'The Artesian Herald', 1947, 27, 1);

CREATE TABLE yearbooks
(
	publicationid int,
	publicationname varchar(30),
	year int,
	editorids int[],
	advisorid int
);


INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2010, '{1,2}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2011, '{2,3}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2012, '{3,4}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2013, '{4,5}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2014, '{5,6}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2015, '{6,7}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2016, '{7,8}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2017, '{8,9}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2018, '{9,10}', 1);
INSERT INTO yearbooks(publicationid, publicationname, year, editorids, advisorid) VALUES (4, 'The Artesian Yearbook', 2019 '{11, 12}', 1);

SELECT * FROM publications AS "Publications";
SELECT * FROM heraldissues AS "Herald Issues";
SELECT * FROM yearbooks AS "Yearbooks";



--CREATE TABLE redline;

--CREATE TABLE writers;

--CREATE TABLE stories;

--CREATE TABLE spreads;

--CREATE TABLE editors;

--CREATE TABLE advisors;

--CREATE TABLE photographers;

--CREATE TABLE photos;

--CREATE TABLE sections;

--CREATE TABLE teachers;

--CREATE TABLE students;

--CREATE TABLE coaches;

--CREATE TABLE janitors;

--CREATE TABLE parents;

--CREATE TABLE awards;

--CREATE TABLE yearbooks;

\c postgres;

DROP DATABASE MHSpublications;

