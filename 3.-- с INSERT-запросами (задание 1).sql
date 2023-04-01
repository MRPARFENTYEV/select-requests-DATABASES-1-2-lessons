-- с INSERT-запросами (задание 1)

--#Collection insertion
INSERT INTO collection  (name, release_year)
VALUES('Ozzy Songs', '2020-05-25 0:25:00')
VALUES('Russian Language songs', '2020-09-25 0:29:00')
VALUES('French Songs', '2021-07-25 0:05:00')
VALUES('Metal Songs', '2021-05-25 0:50:00')
VALUES('Dancing Songs', '2021-05-25 0:15:00')
VALUES('Melancholy', '2021-01-25 0:28:00')
VALUES('Bondiana Songs', '2021-08-25 0:30:00')
VALUES('Coding Songs', '2021-08-15 0:30:00')

--#tracks insertion
INSERT INTO tracks  (name, lenght)
VALUES('You Know My name', '00:04:04')
VALUES('Patient Number 9', '00:07:22')
VALUES('Immortal', '00:03:03')
VALUES('Parasite', '00:04:05')
VALUES('No Escape From Now', '00:04:05')
VALUES('One of Those Days', '00:04:40')
VALUES('Mr Darkness', '00:05:35')
VALUES('Nothing Feels Right', '00:05:35')
VALUES('Москва', '00:03:52')
VALUES('Skyfall', '00:04:49')
VALUES('Je Parle', '00:03:33')
VALUES('Трудный возраст', '00:03:23')
VALUES('One Million Bullets', '00:04:40')
VALUES('So Am I', '00:03:14')
VALUES('Omg What`s Happening', '00:04:40')

--#Album incertion
INSERT INTO album (name, release_year)
VALUES("Casino Royale", "2006-01-02")
VALUES("Patient Number 9","2022-01-02")
VALUES("Москва", "2005-09-09")
VALUES("Skyfall", "2012-10-05")
VALUES("Effet miroir", "2018-11-15")
VALUES("Трудный возраст", "2006-03-28")
VALUES("This Is Acting", "2016-01-12")
VALUES("Heaven & Hell", "2020-09-17")

--#Singers insertion
INSERT INTO singers(name, nickname)
VALUES ('Christopher Jonn Cornell', 'Chriss Cornell')
VALUES ('John Michael Osbourne', 'Ozzy Osborn')
VALUES ('Наталья Ильинична Чистякова-Ионова', 'Глюк`оза')
VALUES ('Adelle Laurie Blue Adkins', 'Adelle')
VALUES ('Isabelle Geoffroy', 'ZAZ')
VALUES ('Марина Сергеевна Абросикова', 'МакSим')
VALUES ('Sia Kate Isobelle Furler', 'Sia')
VALUES ('Amanda Koçi', 'Ava Max')


--#Insertion into genre
INSERT INTO genre(name)
VALUES ('rock')
VALUES ('metal')
VALUES ('pop')
VALUES ('dancing music')
VALUES ('heavy metal')

