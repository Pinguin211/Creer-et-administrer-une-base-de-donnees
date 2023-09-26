INSERT INTO user (id, email, password)
VALUES (999, 'robert@admin.com', 'hashed_password'),
       (666, 'yuri@admin.com', 'hashed_password'),
       (333, 'jorge@admin.com', 'hashed_password');

INSERT INTO admin (id_user)
VALUES (999),
       (666),
       (333);