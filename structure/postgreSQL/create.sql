CREATE DATABASE gilded_rose;

use gilded_rose;

CREATE TABLE item (
 name    CHARACTER VARYING(100) NOT NULL,
 sellIn  INTEGER,
 quality INTEGER                NOT NULL
);
