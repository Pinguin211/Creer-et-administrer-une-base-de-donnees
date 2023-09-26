#Creation de la table Film
CREATE TABLE film
(
    id   INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE
);

#Creation de la table Tarif
CREATE TABLE tarif
(
    id    INTEGER AUTO_INCREMENT PRIMARY KEY,
    name  VARCHAR(30)   NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

# Creation de la table User
CREATE TABLE user
(
    id       INTEGER AUTO_INCREMENT PRIMARY KEY,
    email    VARCHAR(255) UNIQUE NOT NULL,
    password CHAR(40)        NOT NULL
);

# Création de la table Admin
CREATE TABLE admin
(
    id      INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_user INTEGER NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user (id)
);

# Création de la table director
CREATE TABLE director
(
    id      INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_user INTEGER NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user (id)
);


# Creation de la table client
CREATE TABLE client
(
    id      INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_user INTEGER NOT NULL,
    name    VARCHAR(30),
    FOREIGN KEY (id_user) REFERENCES user (id)
);

# Création de la table Cinéma
CREATE TABLE cinema
(
    id          INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_director INTEGER NULL,
    name VARCHAR(30),
    FOREIGN KEY (id_director) REFERENCES director (id)
);

# Création de la table Salle
CREATE TABLE salle
(
    id        INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_cinema INTEGER NOT NULL,
    nb INTEGER NOT NULL,
    max_place INTEGER NOT NULL,
    FOREIGN KEY (id_cinema) REFERENCES cinema (id)
);

# Création de la table Seance
CREATE TABLE seance
(
    id       INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_salle INTEGER  NOT NULL,
    id_film  INTEGER  NOT NULL,
    datehour DATETIME NOT NULL,
    FOREIGN KEY (id_salle) REFERENCES salle (id),
    FOREIGN KEY (id_film) REFERENCES film (id)
);

# Creation de la table Ticket
CREATE TABLE ticket
(
    id        INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_seance INTEGER NOT NULL,
    id_client INTEGER NOT NULL,
    id_tarif  INTEGER not null,
    paid      BOOLEAN,
    FOREIGN KEY (id_seance) REFERENCES seance (id),
    FOREIGN KEY (id_client) REFERENCES client (id),
    FOREIGN KEY (id_tarif) REFERENCES tarif (id)
)