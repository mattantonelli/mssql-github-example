
use MyDB
go

if object_id('Genre') is not null
  drop table Genre
go
create table Genre
(
  GenreID int identity (1,1) primary key,
  Genre   varchar(12)
)  
go

if object_id('Movie') is not null
  drop table Movie
go
create table Movie
(
  MovieID int identity (1,1) primary key,
  GenreID     smallint,
  Movie       varchar(35)
)  
go

