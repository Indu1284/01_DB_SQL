/* ------ Unique Strukturen ----- */

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
#USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.User_Tabelle
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
    pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    family_name VARCHAR(20) NOT NULL DEFAULT "TBA"
);

/* Alle Tabellen in der DB anzeigen */
use boo;
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.User_Tabelle;

/* ----- Daten ------- */
INSERT INTO boo.User_Tabelle(user_name,pwd,first_name,family_name) VALUES 
("Grizabella_100",SHA1("1405"),"Grizabella","Mütze"),
 ("Indu_100",SHA1("43#0"),"Indu","Surendran"),
 ("Kanishk_23",SHA1("1234"),"Kanishk","Prasanna"),
 ("Max_40",SHA1("9#23"),"Max","Mütze");
/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.User_Tabelle;

#DROP TABLE IF EXISTS test;

#SHOW TABLES;

ALTER TABLE boo.User_Tabelle ADD user_plz INT(5) NOT NULL DEFAULT 00000;

DESCRIBE boo.User_Tabelle;

UPDATE boo.User_Tabelle set user_plz = 45136 WHERE id = 1;
SELECT * FROM boo.User_Tabelle;







