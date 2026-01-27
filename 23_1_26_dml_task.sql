create table media_playlists(playlist_id INT, playlist_title VARCHAR(150),playlist_description TEXT, visibility_mode ENUM('Public','Private','Unlisted'),total_duration DECIMAL(10,2));
insert into media_playlists values(2341,'SQL Practice with Real Examples','This playlist provides a complete guide to SQL, covering basic to advanced concepts such as database design, queries, joins, subqueries, constraints, indexing, and real-world examples','Private',3.45);
desc media_playlists;
select * from media_playlists;
insert into media_playlists(playlist_id,playlist_title,total_duration) values(5476,'java for beginers',07.8);
insert into media_playlists values(5678,'python for biginers','this is for the students who are intrested to learn python','Public',09.8),(567,'python advance topic','advance to to learn and practice','Private',08.7),(5987,'sql advance topic','sql topics on database we cover all the topices on sdl','Private',08.9);
insert into media_playlists(playlist_id,playlist_title,visibility_mode)values(453,'cooking videos','Public'),(654,'cooking videos in kannada','Private');
select *from media_playlists;