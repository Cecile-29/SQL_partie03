--- Exercice 01 Créer la base codex, créer une table clients avec les colonnes id, 
    --lastName, firstName,birthDate, adress, phoneNumber et mail.
    CREATE DATABASE `codex`;
    CREATE TABLE `clients`(
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        lastName VARCHAR(50),
        firstName VARCHAR(50),
        --birthDate VARCHAR(50),
        birthDate DATE,
        adress VARCHAR(255),
        phoneNumber INT,
        mail VARCHAR(255)
        );

--- Exercice 02 Dans la base de donnée 'webDevelopment',ajouter à la table languages une colonne versions (VARCHAR).
    ALTER TABLE `languages` ADD `versions` VARCHAR(50);
    SHOW COLUMNS FROM `frameworks`;
    DESCRIBE `frameworks`;

--- Exercice 03 Ajouter à la table frameworks une colonne version (INT)
    ALTER TABLE `frameworks` ADD version INT;

--- Exercice 04 Dans la table languages renommer la colonne versions en version.
    ALTER TABLE `languages` CHANGE versions version VARCHAR(50);

--- Exercice 05 Dans la table frameworks, renommer la colonne name en framework.
    ALTER TABLE `frameworks` RENAME COLUMN name TO framework;
    ALTER TABLE `frameworks` CHANGE `name` `framework` VARCHAR(50);

--- Exercice 06 Ajouter à la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
    ALTER TABLE `frameworks` MODIFY version VARCHAR(10);

--- Exercice 07 Dans la base codex, dans la table clients et en une seule requête :
    --supprimer la colonne phoneNumber -renommer la colonne mail par mails 
    --ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
    ALTER TABLE clients DROP phoneNumber, CHANGE mail mails VARCHAR(55), ADD zipCode VARCHAR(55),ADD city VARCHAR(55);