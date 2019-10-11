MUSICIAN

create table MUSICIAN(musicianName varchar(20), income numeric(10,2), address varchar(22), labelLicenseNumber char(18), primary key(musicianName));


insert into MUSICIAN values('Gorillaz', 345000.00, '75 Rockefeller Plaza', '2342');
insert into MUSICIAN values('Green Day', 123000.00, '345 North Mapel Drive', '2342');
insert into MUSICIAN values('Mariah Carey', 90000.00, '6 West 57th Street', '2435');
insert into MUSICIAN values('Rascall Flats', 141000.00, 'PO Box 461599', '4214');
insert into MUSICIAN values('Hanspeter Kyburz', 20000.00, '3300 Warner Blvd', '4214');
insert into MUSICIAN values('Kronos Quartet', 43000.00, '123 10th Street', '2342');
insert into MUSICIAN values('Jack Johnson', 400000.00, '32 Blue Brook Way', '2435');
insert into MUSICIAN values('Foo Fighters', 43000.00, '53 9th St', '4214');
insert into MUSICIAN values('Bowling For Soup', 125000.00, '20 Freport Lane', '7532');
insert into MUSICIAN values('Sonique', 30000.00, '3420 Paris Boulevard', '2435');
insert into MUSICIAN values('Yello', 21.98, '13 Elm Street', '2342');
insert into MUSICIAN values('Fred Blassie', 1500000.00, '56 Pencil Neck Lane', '7532');
insert into MUSICIAN values('Barry Manilow', 10000000.00, '2 Mandy Road', '2435');

###########################################################################################

LABEL

create table LABEL(labelName varchar(15),labelLicenseNumber char(18), city varchar(11), revenue numeric(10,2), primary key(labelLicenseNumber));

insert into LABEL values('Elektra', '2342', 'New York', 23000000.00);
insert into LABEL values('4 A D', '4214', 'Los Angeles', 2000000.00);
insert into LABEL values('Jackson Records', '6642', 'Los Angeles', 33000000.00);
insert into LABEL values('Arista', '2435', 'New York', 1300000.00);
insert into LABEL values('Enigma', '7532', 'Culver City', 978000.00);



#####################################################################################

ALBUM

create table ALBUM(albumName varchar(27), musicianName varchar(16), albumNumber char(11), labelLicenseNumber char(18), price numeric(5,2), primary key(albumName));


insert into ALBUM values('Demon Days', 'Gorillaz', '479', '2342', 9.44);
insert into ALBUM values('Emancipation of Mimi', 'Mariah Carey', '723', '2435', 9.44);
insert into ALBUM values('Melt', 'Rascall Flats', '123', '4214', 9.44);
insert into ALBUM values('Pieces of Africa', 'KronosQuartet', '1451', '2342', 15.99);
insert into ALBUM values('Curious George', 'Jack Johnson', '351', '2435', 9.44);
insert into ALBUM values('In Your Honor', 'Foo Fighters', '463', '4214', 15.99);
insert into ALBUM values('Foo Fighters', 'Foo Fighters', '567', '4214', 14.99);
insert into ALBUM values('A Hangover You Don''t Deserve', 'Bowling For Soup', '731', '7532', 9.44);
insert into ALBUM values('New Saxophone Chamber Music', 'Hanspeter Kyburz', '646', '4214', 21.99);
insert into ALBUM values('Born To Be Free', 'Sonique', '163', '2435', 24.49);
insert into ALBUM values('One Second', 'Yello', '349', '2342', 10.99);


###################################################################################

SONG

create table SONG(songName varchar(17), albumName varchar(27), length numeric(5,2), genre varchar(11), primary key(songName,albumName));


insert into SONG values('El Manana', 'Demon Days', 3.53, 'pop');
insert into SONG values('Feel Good Inc', 'Demon Days', 3.43, 'pop');
insert into SONG values('One and Only', 'Emancipation of Mimi', 3.16, 'pop');
insert into SONG values('To the Floor', 'Emancipation of Mimi', 3.29, 'pop');
insert into SONG values('Love You Out Loud', 'Melt', 3.08, 'country');
insert into SONG values('Dry Country Girl', 'Melt', 3.18, 'country');
insert into SONG values('Waterwheel', 'Pieces of Africa', 3.34, 'classical');
insert into SONG values('Sunset', 'Pieces of Africa', 6.43, 'classical');
insert into SONG values('People Watching', 'Curious George', 3.21, 'pop');
insert into SONG values('Lullaby', 'Curious George', 2.50, 'pop');
insert into SONG values('Resolve', 'In Your Honor', 4.51, 'pop');
insert into SONG values('Razor', 'In Your Honor', 4.56, 'pop');
insert into SONG values('Weenie Beenie', 'Foo Fighters', 2.48, 'pop');
insert into SONG values('Oh, George', 'Foo Fighters', 3.02, 'pop');
insert into SONG values('Get Happy', 'A Hangover You Don''t Deserve', 2.59, 'pop');
insert into SONG values('Smoothie King', 'A Hangover You Don''t Deserve', 4.04, 'pop');
insert into SONG values('Cells', 'New Saxophone Chamber Music', 22.34, 'classical');
insert into SONG values('Alive', 'Born To Be Free', 5.23, 'dance');
insert into SONG values('Magic', 'Born To Be Free', 4.51, 'dance');
insert into SONG values('Moon In Ice', 'One Second', 4.23, 'alternative');
insert into SONG values('Goldrush', 'One Second', 5.12, 'alternative');


###################################################################################################

CONCERT

create table CONCERT(musicianName varchar(16), cdate varchar(8), place varchar(13), city varchar(13), price numeric(5,2), capacity char(8), primary key(musicianName, cdate, place, city, price));

insert into CONCERT values('Bowling For Soup', '6/27/18', 'Lisner', 'Washington DC', 20.34, '1000');
insert into CONCERT values('Gorillaz', '11/12/18', 'RFK', 'New York', 25.00, '10000');
insert into CONCERT values('Gorillaz', '11/12/18', 'Boston Garden', 'Boston', 39.99, '5000');
insert into CONCERT values('Gorillaz', '11/12/18', 'Boston Garden', 'Boston', 59.99, '1000');
insert into CONCERT values('Gorillaz', '4/13/18', '9:30 Club', 'New York', 19.00, '700');
insert into CONCERT values('Jack Johnson', '3/26/18', '9:30 Club', 'New York', 20.00, '700');
insert into CONCERT values('Foo Fighters', '6/27/18', 'Meadowlands', 'New York', 35.00, '5000');
insert into CONCERT values('Mariah Carey', '5/23/18', 'RFK', 'New York', 23.00, '15000');
insert into CONCERT values('Mariah Carey', '2/25/18', 'Meadowlands', 'New York', 20.00, '15000');
insert into CONCERT values('Bowling For Soup', '3/29/18', '9:30 Club', 'New York', 15.00, '700');
insert into CONCERT values('Bowling For Soup', '3/29/18', 'Spider Club', 'Los Angeles', 25.00, '200');
insert into CONCERT values('Hanspeter Kyburz', '01/29/18', 'Carnegie Hall', 'New York', 35.00, '4000');
insert into CONCERT values('Hanspeter Kyburz', '01/29/18', 'Carnegie Hall', 'New York', 45.00, '1500');



