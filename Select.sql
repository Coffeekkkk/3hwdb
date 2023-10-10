select track_name, duration
from tracks
where duration = (select max(duration) from tracks);

select track_name, duration
from tracks
where duration >= 3.5;

select collection_name, year_of_release 
from collection
where year_of_release between 2018 and 2021;

select singer_name
from singers
where singer_name not like '% %';

select track_name
from tracks
where lower(track_name) like 'мой %' or lower(track_name) like '% мой' or lower(track_name) like '% мой %' or lower(track_name) like 'мой' 
or lower(track_name) like 'my %' or lower(track_name) like '% my' or lower(track_name) like '% my %' or lower(track_name) like 'my';

--Задание 3

select name, count (name) from singers e 
join style_singer_relation ge  on e.singer_id = ge.singer_id 
join style g on ge.style_id = g.style_id
group by g.style_id;

select count(track_name) from tracks t 
join albums a on a.album_id = t.album_id 
where extract(year from a.release_date) between 2000 and 2023;

select album_name, AVG(duration) from tracks t 
join albums a on a.album_id = t.album_id 
group by a.album_name;

select singer_name from singers e 
where singer_name not in (
select singer_name from albums a 
join albumsingers ea on a.album_id = ea.album_id 
join singers e on ea.singer_id = e.singer_id
where extract(year from a.release_date) = 2020);

select collection_name from collection c 
join trackcollection ct on c.collection_id = ct.collection_id 
join tracks t on ct.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join albumsingers ea on a.album_id = ea.album_id 
join singers e on ea.singer_id = e.singer_id 
where e.singer_name like 'Rammstein';
