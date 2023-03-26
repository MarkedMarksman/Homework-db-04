INSERT INTO artist 
VALUES 
(1, 'Elvis Presley'),
(2, 'Roy Orbinson'),
(3, 'Led Zeppelin'),
(4, 'Deep Purple'),
(5, 'Nas'),
(6, 'Aphex Twin'),
(7, 'Skrillex'),
(8, 'The Dubliners');

INSERT INTO genres
VALUES 
(1, 'Rock n Roll'),
(2, 'Classic Rock'),
(3, 'Hip-Hop'),
(4, 'Electronic'),
(5, 'Folk');

INSERT INTO genre
VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8);

--не менее 8 альбомов
INSERT INTO album  
VALUES 
(1, 'Elvis is Back', '1960-04-08'),
(2, 'Lonely and Blue', '1960-01-01'),
(3, 'Led Zeppelin', '1969-01-12'),
(4, 'Machine Head', '1972-03-25'),
(5, 'Illmatic', '1994-04-19'),
(6, 'Drukqs', '2001-10-22'),
(7, 'My Name is Skrillex', '2010-06-7'),
(8, 'The Dubliners', '1964-01-01');


--связующая таблица исполнителей и альбомов
INSERT INTO albums
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

--не менее 15 треков
INSERT INTO tracks  
VALUES 
(1, 'Stuck on You', '2:18', 1),
(2, 'Fame and Fortune', '2:29', 1),
(3, 'Only the Lonely', '2:26', 2),
(4, 'Bye Bye Love', '2:14', 2),
(5, 'Dazed and Confuzed', '6:27', 3),
(6, 'You Shook me', '6:28', 3),
(7, 'Pictures of Home', '5:06', 4),
(8, 'Smoke on the Water', '5:40', 4),
(9, 'Life is a Bitch', '3:31', 5),
(10, 'The Genesis', '1:45', 5),
(11, 'Father', '0:57', 6),
(12, 'Kesson Dalef', '1:21', 6),
(13, 'With You Friends', '6:22', 7),
(14, 'Fucking Die 1', '3:50', 7),
(15, 'The Wild Rover', '3:13', 8),
(16, 'Rocky Road to Dublin', '2:34', 8);

INSERT INTO collection
VALUES 
(1, 'Elvis and Roy', '1960-02-01'),
(2, 'Led Zeppelin and Deep Purple', '1968-04-4'),
(3, 'Nas and Aphex Twin', '2005-01-02'),
(4, 'Aphex Twin + Skrillex', '2007-05-02'),
(5, 'Elvis and Deep Purple', '2018-10-12'),
(6, 'Roy and Led Zeppelin ', '2019-07-25'),
(7, 'The Dubliners and Led Zeppelin', '2021-01-16'),
(8, 'Apex Twin and The Dubliners', '2022-04-03');

--связующая таблица треков и коллекций
INSERT INTO collections
VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(16, 6),
(1, 5),
(7, 5),
(2, 6),
(5, 6),
(15, 7),
(6, 7),
(12, 8),
(16, 8);