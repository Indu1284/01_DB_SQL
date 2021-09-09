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
    first_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    family_name VARCHAR(20) NOT NULL DEFAULT "TBA",
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.User_Tabelle;

/* ----- Daten ------- */
INSERT INTO boo.User_Tabelle(user_name,first_name,family_name) VALUES ("Grizabella_100","Grizabella","Mütze");
INSERT INTO boo.User_Tabelle(user_name,first_name,family_name)) VALUES ("Indu_100","Indu","Surendran");
INSERT INTO boo.User_Tabelle(user_name,first_name,family_name) VALUES ("Kanishk_23","Kanishk","Prasanna");
INSERT INTO boo.User_Tabelle(user_name,first_name,family_name) VALUES ("Max_40","Max","Mütze");
/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.User_Tabelle;

#DROP TABLE IF EXISTS test;

#SHOW TABLES;





