--- Exercice 01 Créer la base codex, créer une table clients avec les colonnes id, 
    --lastName, firstName,birthDate, adress, phoneNumber et mail.
    CREATE DATABASE `codex`;
    CREATE TABLE `clients`(
        id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        lastName VARCHAR(50),
        firstName VARCHAR(50),
        birthDate DATE,
        adress VARCHAR(50),
        phoneNumber VARCHAR(50),
        mail VARCHAR(50)
        );

--- Exercice 02 Dans la base de donnée 'webDevelopment',ajouter à la table languages une colonne versions (VARCHAR).
    ALTER TABLE `frameworks` ADD versions VARCHAR(50);
    SHOW COLUMNS FROM `frameworks`;

--- Exercice 03 Ajouter à la table frameworks une colonne version (INT)
    ALTER TABLE `frameworks` ADD version INT;

--- Exercice 04 Dans la table languages renommer la colonne versions en version.
    ALTER TABLE `frameworks` CHANGE versions version VARCHAR(50);

--- Exercice 05 Dans la table frameworks, renommer la colonne name en framework.
    ALTER TABLE `frameworks` RENAME COLUMN name TO framework;

--- Exercice 06 Ajouter à la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
    ALTER TABLE `frameworks` MODIFY version VARCHAR(50);

--- Exercice 07 Dans la base codex, dans la table clients et en une seule requête :
    --supprimer la colonne phoneNumber -renommer la colonne mail par mails 
    --ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)