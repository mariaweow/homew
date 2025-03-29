--- Задание 2
-- 1
select title,duration from song
where duration = (select max(duration) from song);
--2
select title from song
where duration >= 210;
--3
select title from collection
where year >= 2018 and year <= 2020;
--4
select name from performer
where name not like '% %';
--5
select title from song 
where title ILIKE 'my %'
or title ILIKE '% my'
OR title ILIKE '% my %'
or title ilike 'my' 
or title ILIKE 'мой %'
or title ILIKE '% мой'
OR title ILIKE '% мой %'
or title ilike 'мой';

--- Задание 3
--1
select genre.title,count(*) from genreperformer g
join genre on g.genre_id = genre.id 
join performer on g.performer_id = performer.id
group by title
order by count(*) desc ;
--2
select count(song.title) as count_song from album 
join song on album.id = song.album_id
where year between 2019 and 2020;
--3
select album.title,avg(song.duration) from album
join song on album.id = song.album_id
group by album.title;
--4
SELECT name FROM performer
WHERE name NOT IN (SELECT name FROM performer 
    JOIN performeralbum pa ON performer.id = pa.performer_id
    JOIN album ON album.id = pa.album_id 
    WHERE album.year = 2020
   );
--5
select distinct collection.title, performer.name from collectionsong c 
join collection on c.collection_id = collection.id 
join song on c.song_id = song.id 
join album on song.album_id = album.id 
join performeralbum p on album.id = p.album_id 
join performer on p.performer_id = performer.id
where performer.name like 'Исп2';

select * from song;