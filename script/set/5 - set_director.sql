INSERT INTO user (id, email, password)
VALUES (888, 'robert@director.com', 'hashed_password'),
       (555, 'yuri@director.com', 'hashed_password'),
       (222, 'jorge@director.com', 'hashed_password');

INSERT INTO director (id, id_user)
VALUES (888, 888),
       (555, 555),
       (222, 222);