ALTER TABLE test.performer DISABLE TRIGGER ALL;
ALTER TABLE test.genre DISABLE TRIGGER ALL;
ALTER TABLE test.performer_genre DISABLE TRIGGER ALL;
ALTER TABLE test.album DISABLE TRIGGER ALL;
ALTER TABLE test.performer_album DISABLE TRIGGER ALL;
ALTER TABLE test.track DISABLE TRIGGER ALL;
ALTER TABLE test.collection DISABLE TRIGGER ALL;
DELETE FROM test.performer;
DELETE FROM test.genre;
DELETE FROM test.performer_genre;
DELETE FROM test.album;
DELETE FROM test.performer_album;
DELETE FROM test.track;
DELETE FROM test.collection;
ALTER TABLE test.performer ENABLE TRIGGER ALL;
ALTER TABLE test.genre ENABLE TRIGGER ALL;
ALTER TABLE test.performer_genre ENABLE TRIGGER ALL;
ALTER TABLE test.album ENABLE TRIGGER ALL;
ALTER TABLE test.performer_album ENABLE TRIGGER ALL;
ALTER TABLE test.track ENABLE TRIGGER ALL;
ALTER TABLE test.collection ENABLE TRIGGER ALL;

INSERT INTO test.performer
	VALUES 
		(1, 'Juli'),
		(2, 'Rammstein'),
		(3, 'Maneskin'),
		(4, 'Emma Marone'),
		(5, 'Chopin'),
		(6, 'Tchaikovsky'),
		(7, 'Splin'),
		(8, 'Zemfira'),
		(9, 'Nirvana'),
		(10, 'Queen');
	
INSERT INTO test.genre
	VALUES 
		(1, 'German'),
		(2, 'Italian'),
		(3, 'Classic'),
		(4, 'Russian Rock'),
		(5, 'Rock');
	
INSERT INTO test.performer_genre
	VALUES 
		(1, 1, 1),
		(2, 2, 1),
		(3, 3, 2),
		(4, 4, 2),
		(5, 5, 3),
		(6, 6, 3),
		(7, 7, 4),
		(8, 8, 4),
		(9, 9, 5),
		(10, 10, 5);

INSERT INTO test.album
	VALUES 
		(1, 'Es ist Juli', 2004),
		(2, 'Mutter', 2001),
		(3, 'Zitti e buoni', 2021),
		(4, 'Essere Qui', 2018),
		(5, 'Waltzes', 2010),
		(6, 'The Nutcracker', 2020),
		(7, 'Fellini', 2001),
		(8, 'Vendetta', 2005),
		(9, 'Nevermind', 1991),
		(10, 'Bohemian Rhapsody', 2018);
		
INSERT INTO test.performer_album
	VALUES 
		(1, 1, 1),
		(2, 2, 2),
		(3, 3, 3),
		(4, 4, 4),
		(5, 5, 5),
		(6, 6, 6),
		(7, 7, 7),
		(8, 8, 8),
		(9, 9, 9),
		(10, 10, 10);
		
INSERT INTO test.track
	VALUES 
		(1, 'Sterne', 239, 1),
		(2, 'Warum', 225, 1),
		(3, 'Mein Herz Brennt', 279, 2),
		(4, 'Sonne', 272, 2),
		(5, 'Ich Will', 217, 2),
		(6, 'Zitti e buoni', 196, 3),
		(7, 'Mondiale', 207, 4),
		(8, 'Waltzes: ¹4 in F major', 136, 5),
		(9, 'The Nutcracker', 208, 6),
		(10, 'Fellini', 277, 7),
		(11, 'Summary', 218, 8),
		(12, 'Come As You Are', 218, 9),
		(13, 'The show must go on', 271, 10),
		(14, 'Somebody To Love', 297, 10),
		(15, 'Bohemian Rhapsody', 355, 10);
		
INSERT INTO test.collection
	VALUES 
		(1, 'Es ist Juli', 2004),
		(2, 'Mutter', 2001),
		(3, 'Zitti e buoni', 2021),
		(4, 'Essere Qui', 2018),
		(5, 'Waltzes', 2010),
		(6, 'The Nutcracker', 2020),
		(7, 'Fellini', 2001),
		(8, 'Vendetta', 2005),
		(9, 'Nevermind', 1991),
		(10, 'Bohemian Rhapsody', 2018);