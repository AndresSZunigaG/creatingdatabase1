/*** CLEANING DATA IN THE PROCESS OF CREATING A DATABASE ***/

-- I had to create a database with 7 tables with multiples PK and FK. It gived me some errors with the information in tables: 'players' and 'courses'

-- Problems with repeated data in 'players' --

select * from players order by player_name
	
------------------------------------
--	player_name		player_country
------------------------------------	
--  " """		;
--	" """		;
--	" """		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;		
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--	""""		;
--0.0.0.0		;	JP
--0.0.E5		;	DE
--0.10yugfcgui	;	JP
--0.1667		;	JP
--0.1-9.0-2.4	;	GB
--0.2_87po		;	JP
--0.3.0.8.ouga	;	JP
--0.301-Y_M		;	JP
--0.55-33-7		;	DE
--0.6.10m		;	JP

-- Cleaning data without player_name
select * from players where player_name like ''; 	-- to be sure if it's the correct data

-- Delete this data
delete from players where player_name like '';
delete from players where player_name like ' "';
delete from players where player_name like '"';
  
-- Problems whit more empty players
select * from players order by player_country; 		
-- 255 players with weird names and without country

---------------------------------------------------------
--player_name					player_country
--ç¥ž					;
--ç¥ž					;
--æ–					;
--"ç¥žéŠ"""				;
--"ãƒ‰ãƒŠãƒ«ãƒ‰"""			;
--"ç´«è­·ãƒªãƒŽãƒ³ã€€"""		;
--"æ”¹é€ è€…âˆšâˆš"""			;
--ç¥ž					;
--"ã†ã‚“ã¡ã€€"""			;
--"æœ€å¼·"""				;
--é¾					;
--ãƒ›ã‚¿ãƒ«				;
--ç¥ž					;
--ã„					;
--ç¥ž					;
--ã¿					;
--"æœ€å¼·"""				;
--ç¥ž					;
--"çŽ‹ã€€ã€€ã€€"""			;
--æ–					;
--æ»					;
--W					;
--ç¥ž					;
--ç¥ž					;
--"æ™‚åˆ»è¡¨âˆšã€€ã€€"""		;
--é¾ç¥ž					;
--"æœ€å¼·ç ´å£Šç¥ž"""			;
--"ç¥ž"""				;
--"ç¥žã€€ã€€ã€€"""			;

select * from players where player_country like '';		-- to be sure if it's the correct data

delete from players where player_country like '';		-- delete the data

/* PROBLEM SOLVED */	
	

-- Problems with data in 'courses' --

select * from courses order by player_maker;	-- It gived me courses without creator	

-- A count of courses for each player_creator
select player_maker, COUNT(course_id) as cuenta from courses group by player_maker order by cuenta desc;

-- See information with courses by title and without player_creator
select * from courses where player_maker like '' order by title;
  
-- After a research I found the creator of each course

-- Xavierol69
-- Update each course with his own player_creator
-- update courses set player_maker = 'Xavierol69' where title like 'A (not so) Beautiful Mind';

--Zerodius
update courses set player_maker = 'Zerodius' where title like 'Cy-Zo Mario World'
or title like 'DasZaubertal'
or title like 'der chat'
or title like 'Die Schienenwelt'
or title like 'dixième création'
or title like 'douzième création'
or title like 'easy levels'
or title like 'Einvaches Level'
or title like 'Find me'
or title like 'FireMan'
or title like 'First course!!!'
or title like 'Fungal Infection'; 

--JustinDianaRalf
update courses set player_maker = 'JustinDianaRalf' where title like 'gefährlich.'
or title like 'gros klein'
or title like 'Horror Temple'
or title like 'Illuminati'
or title like 'imposible si tarive GG'
or title like 'jusque qu au bose'
or title like 'l'
or title like 'le bordel automatique'
or title like 'les scies circulaires'
or title like 'Mario gets an Intervention'
or title like 'mario rage ou pas ?'
or title like 'Mr. Speed';

--drmsj1983
update courses set player_maker = 'drmsj1983' where title like 'Lost Luftschif'
or title like 'Nightmares & Seascapes 2'
or title like 'niveau difficile !!!'
or title like 'niveau difficile!!!!'
or title like 'niveau impossible de guigui'
or title like 'Panic Pigeon: Final Fright'
or title like 'Panic Pigeon: Muncher Mayhem'
or title like 'Potpourri'
or title like 'quellee porte et la bonne'
or title like 'run  go batre le records'
or title like 'sans nuage'
or title like 'Slippy Saves the Day Again';


--Shiraur
update courses set player_maker = 'Shiraur' where player_maker like '';


/* PROBLEM SOLVED */	
