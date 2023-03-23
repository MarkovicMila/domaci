CREATE TABLE autor(
autor_id INTEGER PRIMARY KEY NOT NULL,
naziv VARCHAR(40) NOT NULL);

INSERT INTO autor VALUES (174,'Branko Copic');
INSERT INTO autor VALUES (254,'Nikola Tesla');
INSERT INTO autor VALUES (315,'Zoranah');
INSERT INTO autor VALUES (456,'Desanka Maksimovic');



CREATE TABLE knjiga(
knjiga_id INTEGER NOT NULL,
naziv VARCHAR(50) NOT NULL,
broj_strana INTEGER NOT NULL,
autor_id INTEGER NOT NULL,
PRIMARY KEY(knjiga_id),
FOREIGN KEY (autor_id) REFERENCES autor(autor_id));

INSERT INTO knjiga VALUES (11,'Koreni',1000,0174);
INSERT INTO knjiga VALUES (57,'EMK',500,254);
INSERT INTO knjiga VALUES (58,'Naizmenicna struja',250,254);
INSERT INTO knjiga VALUES (046,'Kako se udati za stranog fudbalera',15,315);
INSERT INTO knjiga VALUES (001,'Najlepse pesme za budjenje',50,456);
INSERT INTO knjiga VALUES (002,'Najlepse pesme za spavanje',50,456);


SELECT *
FROM knjiga

SELECT *
FROM autor

SELECT A.naziv
FROM autor A, knjiga K
WHERE K.naziv='Koreni' AND A.autor_id=K.autor_id

SELECT K.naziv
FROM autor A, knjiga K
WHERE A.naziv='Desanka Maksimovic' AND A.autor_id=K.autor_id

DROP TABLE knjiga