INSERT INTO tarif (id, name, price)
VALUES (1, 'Plein tarif', 9.20),
       (2, 'Étudiant', 7.60),
       (3, 'Moins de 14 ans', 5.90);

INSERT INTO film (id, name)
VALUES (1, 'Le Seigneur des Anneaux'),
       (2, 'Forrest Gump'),
       (3, 'Pulp Fiction'),
       (4, 'Fight Club'),
       (5, 'Inception'),
       (6, 'Le Parrain'),
       (7, 'Matrix'),
       (8, 'Le Silence des Agneaux'),
       (9, 'Le Bon, la Brute et le Truand'),
       (10, 'Les Évadés'),
       (11, 'Gladiator'),
       (12, 'Le Retour du Roi'),
       (13, 'Le Voyage de Chihiro'),
       (14, 'Interstellar'),
       (16, 'Le Roi Lion'),
       (17, 'The Dark Knight'),
       (18, 'Forrest Gump 2'),
       (19, 'Le Labyrinthe de Pan'),
       (20, 'Les Affranchis'),
       (21, 'Les Cinq Légendes'),
       (22, 'Le Loup de Wall Street'),
       (23, 'Django Unchained'),
       (24, 'Retour vers le Futur'),
       (25, 'La La Land'),
       (26, 'Le Prestige'),
       (27, 'Blade Runner'),
       (28, 'Inglourious Basterds'),
       (29, 'Casino'),
       (30, 'Dunkerque'),
       (31, 'American History X');

INSERT INTO user (id, email, password)
VALUES (1, 'alice@example.com', 'hashed_password'),
       (2, 'bob@example.com', 'hashed_password'),
       (3, 'carol@example.com', 'hashed_password'),
       (4, 'dave@example.com', 'hashed_password'),
       (5, 'eve@example.com', 'hashed_password'),
       (6, 'frank@example.com', 'hashed_password'),
       (7, 'grace@example.com', 'hashed_password'),
       (8, 'hank@example.com', 'hashed_password'),
       (9, 'irene@example.com', 'hashed_password'),
       (10, 'jack@example.com', 'hashed_password'),
       (11, 'kate@example.com', 'hashed_password'),
       (12, 'lucas@example.com', 'hashed_password'),
       (13, 'mary@example.com', 'hashed_password'),
       (14, 'nancy@example.com', 'hashed_password'),
       (15, 'oliver@example.com', 'hashed_password');

INSERT INTO client (id_user, name)
VALUES (1, 'alice'),
       (2, 'bob'),
       (3, 'carol'),
       (4, 'dave'),
       (5, 'eve'),
       (6, 'frank'),
       (7, 'grace'),
       (8, 'hank'),
       (9, 'irene'),
       (10, 'jack'),
       (11, 'kate'),
       (12, 'lucas'),
       (13, 'mary'),
       (14, 'nancy'),
       (15, 'oliver');

INSERT INTO user (id, email, password)
VALUES (999, 'robert@admin.com', 'hashed_password'),
       (666, 'yuri@admin.com', 'hashed_password'),
       (333, 'jorge@admin.com', 'hashed_password');

INSERT INTO admin (id_user)
VALUES (999),
       (666),
       (333);

INSERT INTO user (id, email, password)
VALUES (888, 'robert@director.com', 'hashed_password'),
       (555, 'yuri@director.com', 'hashed_password'),
       (222, 'jorge@director.com', 'hashed_password');

INSERT INTO director (id, id_user)
VALUES (888, 888),
       (555, 555),
       (222, 222);

INSERT INTO cinema (id, id_director, name)
VALUES
    (11, 222, 'Le grand écran'),
    (22, 888, 'BigScreen'),
    (33, 555, 'TV'),
    (44, NULL, 'CD');

INSERT INTO salle (id, nb, id_cinema, max_place)
VALUES
    (1, 1,11, 100),
    (2, 2,11, 100),
    (3, 3,11, 150),
    (4, 4,11, 200),
    (5, 5,11, 200),
    (6, 1, 22, 20),
    (7, 2, 22, 30),
    (8, 3, 22, 40),
    (9, 1, 33, 30),
    (10, 2, 33, 30),
    (11, 1, 44, 30),
    (12, 2, 44, 66);

INSERT INTO seance (id, id_salle, id_film, datehour)
VALUES
    (1, 1, 10, '2023-09-24 14:00:00'),
    (2, 2, 5, '2023-09-25 15:30:00'),
    (3, 3, 20, '2023-09-26 12:15:00'),
    (4, 4, 12, '2023-09-27 17:45:00'),
    (5, 5, 8, '2023-09-28 09:20:00'),
    (6, 6, 12, '2023-09-29 14:30:00'),
    (7, 7, 3, '2023-09-30 16:45:00'),
    (8, 8, 29, '2023-10-01 11:00:00'),
    (9, 9, 7, '2023-10-02 18:30:00'),
    (10, 10, 17, '2023-10-03 10:15:00'),
    (11, 11, 25, '2023-10-04 14:45:00'),
    (12, 12, 4, '2023-10-05 19:10:00'),
    (13, 1, 11, '2023-10-06 09:40:00'),
    (14, 2, 30, '2023-10-07 13:20:00'),
    (15, 3, 9, '2023-10-08 15:55:00'),
    (16, 4, 22, '2023-10-09 12:05:00'),
    (17, 5, 6, '2023-10-10 17:25:00'),
    (18, 6, 14, '2023-10-11 11:30:00'),
    (19, 7, 28, '2023-10-12 16:00:00'),
    (20, 8, 1, '2023-10-13 08:45:00'),
    (21, 9, 19, '2023-10-14 19:40:00'),
    (22, 10, 26, '2023-10-15 14:50:00'),
    (23, 11, 2, '2023-10-16 10:10:00'),
    (24, 12, 16, '2023-10-17 17:15:00'),
    (25, 1, 18, '2023-10-18 12:25:00'),
    (26, 2, 27, '2023-10-19 16:35:00'),
    (27, 3, 13, '2023-10-20 09:15:00'),
    (28, 4, 21, '2023-10-21 13:50:00'),
    (29, 5, 23, '2023-10-22 18:20:00'),
    (30, 6, 24, '2023-10-23 10:55:00');

INSERT INTO ticket (id_seance, id_client, id_tarif, paid)
VALUES
    (5, 12, 2, TRUE),
    (7, 6, 1, FALSE),
    (2, 9, 3, TRUE),
    (11, 1, 1, FALSE),
    (9, 15, 3, TRUE),
    (8, 5, 2, TRUE),
    (1, 3, 3, FALSE),
    (6, 14, 1, TRUE),
    (10, 7, 1, TRUE),
    (12, 4, 2, FALSE),
    (3, 8, 3, TRUE),
    (15, 11, 2, FALSE),
    (4, 13, 3, TRUE),
    (13, 2, 1, FALSE),
    (14, 10, 2, TRUE),
    (27, 1, 3, TRUE),
    (30, 15, 1, FALSE),
    (16, 5, 2, TRUE),
    (20, 9, 3, TRUE),
    (21, 7, 1, FALSE),
    (25, 3, 2, TRUE),
    (19, 12, 3, TRUE),
    (23, 6, 1, FALSE),
    (28, 14, 2, TRUE),
    (29, 4, 3, TRUE),
    (17, 8, 1, FALSE),
    (24, 13, 2, TRUE),
    (18, 2, 3, TRUE),
    (26, 11, 1, FALSE);