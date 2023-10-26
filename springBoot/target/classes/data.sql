-- Données pour la table Utilisateur
INSERT INTO Utilisateur (id, nom_utilisateur, mot_de_passe, email) VALUES
                                                                       (1, 'utilisateur1', 'mdp1', 'utilisateur1@example.com'),
                                                                       (2, 'utilisateur2', 'mdp2', 'utilisateur2@example.com'),
                                                                       (3, 'utilisateur3', 'mdp3', 'utilisateur3@example.com');

-- Données pour la table Serie
INSERT INTO Serie (id, titre, description, utilisateur_id) VALUES
                                                               (1, 'Serie1', 'Première série temporelle', 1),
                                                               (2, 'Serie2', 'Deuxième série temporelle', 2),
                                                               (3, 'Serie3', 'Troisième série temporelle', 3);

-- Données pour la table Evenement
INSERT INTO Evenement (id, date, valeur, commentaire, serie_id) VALUES
                                                                    (1, '2023-10-20 10:00:00', 25.5, 'Premier événement', 1),
                                                                    (2, '2023-10-21 11:30:00', 30.2, 'Deuxième événement', 1),
                                                                    (3, '2023-10-22 09:45:00', 12.8, 'Troisième événement', 2),
                                                                    (4, '2023-10-23 08:15:00', 18.7, 'Quatrième événement', 2),
                                                                    (5, '2023-10-24 12:00:00', 22.1, 'Cinquième événement', 3);

-- Données pour la table Tag
INSERT INTO Tag (id, libelle) VALUES
                                  (1, 'tag1'),
                                  (2, 'tag2'),
                                  (3, 'tag3');

-- Données pour la table Evenement_Tag
INSERT INTO Evenement_Tag (id, evenement_id, tag_id) VALUES
                                                         (1, 1, 1),
                                                         (2, 1, 2),
                                                         (3, 2, 1),
                                                         (4, 3, 2),
                                                         (5, 4, 3),
                                                         (6, 5, 1);

-- Données pour la table Partage
INSERT INTO Partage (id, serie_id, utilisateur_id, type_permission) VALUES
                                                                        (1, 1, 2, 'lecture seule'),
                                                                        (2, 2, 3, 'modification'),
                                                                        (3, 3, 1, 'lecture seule');
