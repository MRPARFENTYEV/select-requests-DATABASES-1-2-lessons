-- 4.«Продвинутая выборка данных»

-- 1.Количество исполнителей в каждом жанре.
select count(s.name)
from singers s join genre g 
on s.id =g.id 
where g.name = 'metal'

select count(s.name)
from singers s join genre g 
on s.id =g.id 
where g.name = 'dancing music'

select count(s.name)
from singers s join genre g 
on s.id =g.id 
where g.name = 'pop'

select count(s.name)
from singers s join genre g 
on s.id =g.id 
where g.name = 'heavy_metal'
  
select count(s.name)
from singers s join genre g 
on s.id =g.id 
where g.name = 'rock'
  
-- -Можно одним запросом
select g.name, count(m.name)
from genre as g
left join singers_and_genre  as gm on g.id = gm.genre_id
left join singers as m on gm.singer_id  = m.id
group by g.name
order by count(m.id) DESC


-- 2.Количество треков, вошедших в альбомы 2019–2020 годов.
select count(* )
from tracks  join album
on tracks.id = album.id
where release_year  > '2019-01-01' and release_year  <'2021-01-01'


--3. Средняя продолжительность треков по каждому альбому.
select avg(lenght) from tracks   
where album_id = 1;

select avg(lenght) from tracks   
where album_id = 2;

select avg(lenght) from tracks   
where album_id = 3;

select avg(lenght) from tracks  
where album_id = 4;

select avg(lenght) from tracks   
where album_id = 5;

select avg(lenght) from tracks  
where album_id = 6;

select avg(lenght) from tracks   
where album_id = 7;

select avg(lenght) from tracks  
where album_id = 8;

-- -одним запросом
select album.name, AVG(tracks.lenght)
from album 
left join tracks  on tracks.album_id = album.id
group by album.name
order by AVG(tracks.lenght)

-- 4.Все исполнители, которые не выпустили альбомы в 2020 году. Случается ошибка.

select s.name  
from singers s  join album
on s.id = album.id
where release_year  > '2020-01-01' and release_year <'2020-12-31'


-- 5.Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select s.name, c.name 
from singers s  join collection c 
on s.id = c.id 
where s.name like  '%John Michael Osbourne%'

-- 6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select album.name
from album 
left join singers_and_album   on album.id = singers_and_album.album_id
left join singers on singers.id = singers_and_album.singer_id
left join singers_and_genre  on singers.id = singers_and_genre.singer_id
left join genre  on genre.id = singers_and_genre.genre_id
group by album.name
having count(distinct genre.name) > 1
order by album.name

-- 7.Наименования треков, которые не входят в сборники.
select tracks.name
from tracks 
left join track_and_collection on tracks.id = track_and_collection.track_id
where album_id  is null


-- 8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select singers.name, tracks.lenght
from tracks 
left join album  on album.id = tracks.album_id
left join singers_and_album  on singers_and_album.album_id = album.id
left join singers   on singers.id = singers_and_album.singer_id 
group by singers .name, tracks.lenght
having tracks.lenght = (select min(lenght) from tracks)
order by singers .name

-- 9.Названия альбомов, содержащих наименьшее количество треков.
select distinct a.name
from album as a
left join tracks as t on t.album_id = a.id
where t.album_id in (
    select album_id
    from tracks
    group by album_id
    having count(id) = (
        select count(id)
        from tracks
        group by album_id
        order by count
        limit 1
    )
)
order by a.name


