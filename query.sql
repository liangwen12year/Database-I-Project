-- Wen Liang(Wen_Liang@student.uml.edu)  01724877




-- 1. Retrieve the name and address of every musician who has an income larger than $100,000 and has at least two songs.
select musicianname, address from musician 
where musicianname in 
	( select musicianname from musician natural join album 
	natural join song where income >= 100000 
	group by musicianname having count(*) > 1);


--2. Retrieve the album name and musician of all the albums released by Elektra such that all songs in the album are between 3 minutes and 7 minutes in length.
select distinct albumname,musicianname from label 
natural join album natural join song 
	where labelname = 'Elektra' and albumname not in 
	(select distinct albumname from song where length <3 or length >7);

--3. Retrieve the name, income, label name of all musicians who have only performed in the same city as their label's office is located. 
select distinct musicianName,income,labelName
from MUSICIAN M natural join LABEL L
where musicianName in (
	select musicianName
	from CONCERT
	where not exists (
		select musicianName
		from CONCERT C
		where M.musicianName=C.musicianName and C.city<>L.city));

--4. For each label, calculate the average price of its albums. List the results by ascending label name.
select labelname, avg(price) from label 
	natural join album group by labelname 
		order by labelname;

--5. Retrieve the name and salary of all musicians who have never written a song.
select musicianname, income from musician 
	where musicianname not in 
		(select musicianname from musician 
			natural join album natural join song);

--6. Find the musicians who are listed to perform in two different cities on the same date: print the name of the musician, the date of conflict, and the two cities in one row. 
select distinct t.musicianname,  t.cdate, t.city, s.city 
from concert t, concert s 
		where t.musicianname = s.musicianname 
				and t.cdate=s.cdate and t.city<>s.city;

--7. List all the musicians who have released songs in exactly two different genres.
select musicianname from musician 
	natural join album natural join song 
		group by musicianname having count(distinct genre) = 2;

--8. Retrieve the songs performed by the musicians whose label company has a revenue larger than 2 million dollars. Print the song name, the musician name and the label name.
select songname, musicianname, labelname from label 
	natural join album natural join song 
		where labellicensenumber in 
			(select labellicensenumber from 
				label where revenue > 2000000);

--9. Retrieve the label name which has produced the most number of songs. 
select labelname from label 
	natural join album natural join song 
		group by labelname having count(*) >= all(select count (*) from label
					 					natural join album natural join song
					  					group by labelname);

--10. Find the album(s) with the least cost per minute of a song played. (Assume the album contains only and all of the songs belongs to it in the database). 
select albumName from ALBUM 
	natural join SONG group by albumName,price 
	having price/SUM(length) <= all (select price/SUM(length) from ALBUM 
								natural join SONG group by albumName,price);

--11. List the artist(s) who's the cheapest album(s) is more or equally expensive than the most expensive album of some other artist.
select musicianname from album t 
	group by musicianname having min(price) >= any(select max(price) from album s 
											where t.musicianname <> s.musicianname 
											group by musicianname); 
