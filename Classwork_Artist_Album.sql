Create schema Artists;
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
							references Artist(ArtistId));