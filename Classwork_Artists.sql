-- Create schema Artists;
Use Artists;
Create table Artist(
ArtistId		Integer		NOT NULL,
ArtistName	char(35)	NOT NULL,
Rating		char(30)	NOT NULL,
Phone		char(10)	NULL,
CONSTRAINT	Artists_PK	PRIMARY KEY(ArtistId)
);

Create table Album(
ArtistId			Integer		NOT NULL,
Track			char(35)	NOT NULL,
Genre			char(30)	NOT NULL,
YearReleased	char(10)	NULL,
constraint		Album_pk	primary key(Track,ArtistId),
CONSTRAINT		Album_fK	foreign key(ArtistId)
							references Artist(ArtistId)
);-- Select *
-- From Artist;
-- use Artists;

--  ALTER TABLE Artist
-- ADD 
-- 	(AlbumName 			char(30) 		NOT NULL,artistartist
-- 	AlbumYear			Integer			NOT NULL);
--     
INSERT INTO Artist (ArtistId, ArtistName, Rating, Phone, AlbumYear, AlbumName)
VALUES 	('1001', 'TYBello', '5', NULL, '2005', 'Koso Oba Bi Ire'),
		('1002', 'NathBassey', '5', NULL, '2017', 'Oni Ise Iyanu'),
        ('1003', 'LaraGeorge', '5', NULL, '2007', 'Ijoba Orun'),
        ('1004', 'AdeyinkaInyang', '4', NULL, '2019', 'Glory');

Select *
from Artist;

