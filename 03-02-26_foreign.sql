create table user_info(id int primary key,name varchar(20),channel_id int,foreign key(channel_id) references channels(channel_id));
alter table channels add unique(channel_id);
alter table user_info add unique(name);
desc user_info;
alter table user_info modify name varchar(20) not null;
alter table user_info modify channel_id int not null;


create table Comments3(comment_id INT primary key, video_id INT,  user_id INT,comment text,likes INT,commented_at DATETIME,number_of_comments bigint,like_id int ,foreign key(like_id) references Likes(like_id));
alter table Likes add unique(like_id);
alter table comments3 modify comment_id int primary key;
alter table Likes modify like_id int primary key;
desc Comments3;
alter table Comments3 modify video_id int not null;
insert into Comments3 values (6,7,8,'hi how r u',678,'2026-06-07 05:00:00',78906,9);

create table Subscription2( subscription_id INT,subscription_plan ENUM('Free','Premium','Family'),notification_type SET('All','Personalized','None'),auto_renew BOOLEAN,price DECIMAL(6,2),discount_percentage FLOAT,subscription_start DATE,last_payment_time TIME, payment_datetime DATETIME);                              
desc Subscription2;
alter table Subscription2 add comment_id int ;
alter table Subscription2 add foreign key(comment_id) references Comments3(comment_id);
alter table Subscription2 add unique(subscription_plan);
alter table Subscription2 modify subscription_id int primary key;
alter table Subscription2 modify subscription_id int not null;
alter table  Subscription2 modify notification_type SET('All','Personalized','None') not null;
alter table subscription2 modify subscription_plan ENUM('Free','Premium','Family') not null;
desc 

insert into subscription2 values(1,'Free','All,None',5.6,7800.45,50.5,'2026-06-07','07:00:00','2026-06-08 5:00:09',1);
desc Likes;
insert into Likes values(11,'like','2026-06-07 09:00:00','Like,Dislike','Mobile,Web',"joy","notlike");


create table Notifications4( cnotification_id INT,notification_type ENUM('NewVideo','CommentReply','LiveStream','Subscription'), priority SET('Low','Medium','High'),message TEXT,sent_at TIMESTAMP);
alter table watch_history modify watch_id INT primary key;
alter table Notifications4 add watch_id int;
alter table Notifications4 add foreign key(watch_id) references watch_history(watch_id);
desc Notifications4;
alter table Notifications4 add unique(cnotification_id);
alter table Notifications4 add unique(notification_type);
alter table Notifications4 modify notification_type ENUM('NewVideo','CommentReply','LiveStream','Subscription') primary key;
alter table Notifications4 modify priority SET('Low','Medium','High') not null;
alter table Notifications4 modify message VARCHAR(255) default 'hi how r u';
alter table Notifications4 modify notification_type ENUM('NewVideo','CommentReply','LiveStream','Subscription') default 'newvideo';

create table watch_history7(watch_id INT, watch_date DATE,watch_time TIME,watch_duration_seconds INT,completion_percentage DECIMAL(5,2),video_quality SET('360p','480p','720p','1080p','4K'));
desc watch_history7;
alter table watch_history7 add video_id int;
alter table watch_history7 modify video_id int primary key;



