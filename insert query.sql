create table media_playlists(playlist_id INT, playlist_title VARCHAR(150),playlist_description TEXT, visibility_mode ENUM('Public','Private','Unlisted'),total_duration DECIMAL(10,2));
insert into media_playlists values(2341,'SQL Practice with Real Examples','This playlist provides a complete guide to SQL, covering basic to advanced concepts such as database design, queries, joins, subqueries, constraints, indexing, and real-world examples','Private',3.45);
desc media_playlists;
select * from media_playlists;
insert into media_playlists(playlist_id,playlist_title,total_duration) values(5476,'java for beginers',07.8);
insert into media_playlists values(5678,'python for biginers','this is for the students who are intrested to learn python','Public',09.8),(567,'python advance topic','advance to to learn and practice','Private',08.7),(5987,'sql advance topic','sql topics on database we cover all the topices on sdl','Private',08.9);
insert into media_playlists(playlist_id,playlist_title,visibility_mode)values(453,'cooking videos','Public'),(654,'cooking videos in kannada','Private');
select *from media_playlists;


create table content_dislikes( dislike_id BIGINT, dislike_reason VARCHAR(50), source_platform ENUM('Web','Mobile','TV'),created_at TIMESTAMP);
insert into content_dislikes values(1,'bad content','Web','2026-01-26 23:22:41');
insert into content_dislikes(dislike_id,dislike_reason,source_platform,created_at)values(2,'voilence content','Mobile','2025-03-4 22:32:22');
insert into content_dislikes values(3,'religious content','TV','23-06-7 21:00:00'),(4,'bad words used','Web','22-05-6 01:00:00');
insert into content_dislikes(dislike_id,dislike_reason,source_platform)values(5,'animal violence','Mobile'),(6,'bad vidiografy','TV'),(7,'human violence','Web');
desc content_dislikes;
select * from content_dislikes;