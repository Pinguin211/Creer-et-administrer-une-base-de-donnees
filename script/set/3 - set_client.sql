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