INSERT INTO singers(name, nickname)
VALUES ('Christopher Jonn Cornell', 'Chriss Cornell')
VALUES ('John Michael Osbourne', 'Ozzy Osborn')
VALUES ('Наталья Ильинична Чистякова-Ионова', 'Глюк`оза')
VALUES ('Adelle Laurie Blue Adkins', 'Adelle')
VALUES ('Isabelle Geoffroy', 'ZAZ')
VALUES ('Марина Сергеевна Абросикова', 'МакSим')
VALUES ('Sia Kate Isobelle Furler', 'Sia')
VALUES ('Amanda Koçi', 'Ava Max')

-- #Collection insertion
INSERT INTO collection  (name, release_year)
VALUES('Ozzy Songs', '2020-05-25 0:25:00')
VALUES('Russian Language songs', '2020-05-25 0:25:00')
VALUES('French Songs', '2021-07-25 0:25:00')
VALUES('Metal Songs', '2021-05-25 0:25:00')
VALUES('Dancing Songs', '2021-05-25 0:25:00')
INSERT INTO collection  (name, release_year)
VALUES('Melancholy', '2021-01-25 0:25:00')

-- Название и год выхода альбомов, вышедших в 2018 году.
select name, release_year  from album
where release_year = '2018-11-15';
-- название и продолжительность самого длительного трека
select name, lenght  from tracks
order by lenght desc 
limit 1;

-- название и продолжительность которых не менее 3,5 минут
select  name,lenght from tracks
where lenght >= '00:03:50'


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select  name, release_year from collection
where release_year <= '2018-01-01 0:00:00'
and release_year >= '2020-12-31'


-- __Исполнители, чьё имя состоит из одного слова.
select  name  from singers
where name not like '% %';

-- Название треков, которые содержат слово «мой» или «my»
select  name  from tracks 
where name = 'my'
where name = 'мой'