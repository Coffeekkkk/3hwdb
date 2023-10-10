INSERT INTO singers (singer_name)
VALUES ('Rammstein'),
       ('Metallica'),
       ('Michal Jackson'),
       ('Чайф'),
       ('Король и Шут'),
       ('Би-2')
       
INSERT INTO style (name)
VALUES ('Metall'),
       ('Punk'),
       ('Pop'),
       ('Rock'),
       ('Electro')

INSERT INTO albums (album_name, release_date)
VALUES ('Mutter', '2001-04-02'),
       ('Master of Puppets', '1986-03-03'),
       ('Reload', '1997-11-18'),
       ('Кино, вино и домино', '2013-05-27'),
       ('Камнем по голове', '1996-10-03'),
       ('Thriller', '1982-11-30')
       
INSERT INTO style_singer_relation (style_id, singer_id )
VALUES (1, 1),
       (1, 2),
       (3, 3),
       (4, 4),
       (2, 5),
       (5, 6)
       
INSERT INTO tracks (track_name, duration, album_id)
VALUES ('Mein Herz brennt', 4.39, 1)

INSERT INTO tracks (track_name, duration, album_id)
VALUES ('Links 2-3-4', 3.36, 1),
       ('Sonne', 4.33, 1),
       ('Ich will', 3.37, 1),
       ('Feuer frei!', 03.08, 1),
       ('Mutter', 4.28, 1),
       ('Spieluhr',4.46, 1),
       ('Zwitter', 4.17, 1),
       ('Rein raus', 3.09, 1),
       ('Adios', 3.48, 1),
       ('Nebel', 4.54, 1)

INSERT INTO tracks (track_name, duration, album_id)
VALUES('Battery',	5.13, 2),
      ('Master of Puppets', 8.36, 2),
      ('The Thing That Should Not Be', 6.37, 2),
      ('Welcome Home (Sanitarium)', 6.28, 2),
      ('Disposable Heroes', 8.17, 2),
      ('Leper Messiah', 5.41, 2),
      ('Orion', 8.28, 2),
      ('Damage, Inc', 5.30, 2)

INSERT INTO albumsingers (singer_id, album_id)
VALUES (1, 1),
       (2,2),
       (2,3),
       (3,6),
       (4,4),
       (5,5)
       
INSERT INTO collection (collection_name , year_of_release)
VALUES ('Collection №1', 2023),
       ('Collection №2', 2022),
       ('Collection №3', 2021),
       ('Collection №4', 1995)

INSERT INTO trackcollection (track_id , collection_id)
VALUES (1,1),
       (2,1),
       (3,1),
       (4,1),
       (19,1),
       (18,1),
       (17,1),
       (5,2),
       (6,2),
       (7,2),
       (16,2),
       (1,2),
       (2,2),
       (3,3),
       (4,3),
       (19,3),
       (11,3),
       (10,3),
       (13,3),
       (14,3),
       (16,4),
       (8,4),
       (17,4),
       (5,4),
       (6,4),
       (13,4),
       (9,4),
       (12,4),
       (16,4)
       
INSERT INTO albums (album_name, release_date)
VALUES ('Not album', '2000-04-02')

INSERT INTO tracks (track_name, duration, album_id)
VALUES('Мой рок-н-ролл',	6.13, 7)


       










       