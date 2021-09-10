/* ------ Unique Strukturen ----- */

/* Datenbanken auf Server anzeigen */
#SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS stocks;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS stocks;

/* DB auswählen */
#USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS stocks.ccc
(
    id INT NOT NULL PRIMARY KEY ,
    c_name VARCHAR(50) NOT NULL,
    ticker VARCHAR(5) NOT NULL,
    sector VARCHAR(50) NOT NULL,
    industry VARCHAR(60) NOT NULL,
    no_yrs INT(2) NOT NULL,
    ranking INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    yield DECIMAL(6,4) NOT NULL,
    dividend DECIMAL(6,4) NOT NULL,
    payouts INT(2) NOT NULL,
    annualized DECIMAL(4,2) NOT NULL
);

/* Alle Tabellen in der DB anzeigen */


/* Struktur der Tabelle anzeigen */
DESCRIBE stocks.ccc;

/*CSV-Datei imort--*/
LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/ccc_dez_2019.csv"
INTO TABLE stocks.ccc
FIELDS TERMINATED BY ";"
LINES  TERMINATED BY "\n"
IGNORE 1 ROWS
;

SELECT * FROM stocks.ccc;





