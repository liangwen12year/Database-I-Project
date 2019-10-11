
-- Wen Liang(Wen_Liang@student.uml.edu)   01724877


-- MUSICIAN(musicianName, income, address, labelLicenseNumber)
-- LABEL(labelName, labelLicenseNumber, city, revenue)
-- ALBUM(albumName, musicianName, albumNumber, labelLicenseNumber, price)
-- SONG(songName, albumName, length, genre)
-- CONCERT(musicianName, cdate, place, city, price, capacity)



create table LABEL(labelName varchar(15),
				labelLicenseNumber char(18), 
				city varchar(11), 
				revenue numeric(10,2), 
				primary key(labelLicenseNumber));

create table MUSICIAN(musicianName varchar(20), 
					income numeric(10,2), 
					address varchar(22), 
					labelLicenseNumber char(18), 
					primary key(musicianName), 
					FOREIGN KEY (labelLicenseNumber) REFERENCES LABEL(labelLicenseNumber));

create table ALBUM(albumName varchar(28), 
					musicianName varchar(16), 
					albumNumber char(11), 
					labelLicenseNumber char(18), 
					price numeric(5,2), 
					primary key(albumName), 
					FOREIGN KEY (labelLicenseNumber) REFERENCES LABEL(labelLicenseNumber),
					FOREIGN KEY (musicianName) REFERENCES MUSICIAN(musicianName));

create table SONG(songName varchar(17), 
					albumName varchar(28),
					length numeric(5,2), 
					genre varchar(11), 
					primary key(songName,albumName), 
					FOREIGN KEY (albumName) REFERENCES ALBUM(albumName));

create table CONCERT(musicianName varchar(16), 
						cdate varchar(8), 
						place varchar(13), 
						city varchar(13), 
						price numeric(5,2), 
						capacity char(8), 
						primary key(musicianName, cdate, place, city, price), 
						FOREIGN KEY (musicianName) REFERENCES MUSICIAN(musicianName));
