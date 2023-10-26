DROP TABLE IF EXISTS Utilisateur;
DROP TABLE IF EXISTS Serie;
DROP TABLE IF EXISTS Evenement;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Evenement_Tag;
DROP TABLE IF EXISTS Partage;

CREATE TABLE Utilisateur (
                             id INT PRIMARY KEY,
                             nom_utilisateur VARCHAR(255) NOT NULL,
                             mot_de_passe VARCHAR(255) NOT NULL,
                             email VARCHAR(255) NOT NULL
);

CREATE TABLE Serie (
                       id INT PRIMARY KEY,
                       titre VARCHAR(255) NOT NULL,
                       description VARCHAR(255),
                       utilisateur_id INT,
                       FOREIGN KEY (utilisateur_id) REFERENCES Utilisateur(id)
);

CREATE TABLE Evenement (
                           id INT PRIMARY KEY,
                           date TIMESTAMP,
                           valeur NUMERIC,
                           commentaire VARCHAR(255),
                           serie_id INT,
                           FOREIGN KEY (serie_id) REFERENCES Serie(id)
);

CREATE TABLE Tag (
                     id INT PRIMARY KEY,
                     libelle VARCHAR(255) NOT NULL
);

CREATE TABLE Evenement_Tag (
                               id INT PRIMARY KEY,
                               evenement_id INT,
                               tag_id INT,
                               FOREIGN KEY (evenement_id) REFERENCES Evenement(id),
                               FOREIGN KEY (tag_id) REFERENCES Tag(id)
);

CREATE TABLE Partage (
                         id INT PRIMARY KEY,
                         serie_id INT,
                         utilisateur_id INT,
                         type_permission VARCHAR(50),
                         FOREIGN KEY (serie_id) REFERENCES Serie(id),
                         FOREIGN KEY (utilisateur_id) REFERENCES Utilisateur(id)
);
