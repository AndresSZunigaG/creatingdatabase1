/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [player_name]
      ,[player_country]
  FROM [coderhouse_project].[dbo].[players]
  order by player_name

	-- Problema con datos repetidos en tabla players--
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

-- Limpiar datos sin player_name

-- select * from players where player_name like '';
-- delete from players where player_name like '';
-- delete from players where player_name like ' "';
-- delete from players where player_name like '"';
  
-- Problema con datos repetidos
-- select * from players order by player_country; -- total 255 players raros y sin pais

---------------------------------------------------------
--player_name					player_country
--ç¥ž						;
--ç¥ž						;
--æ–						­;
--"ç¥žéŠ"""					;
--"ãƒ‰ãƒŠãƒ«ãƒ‰"""			;
--"ç´«è­·ãƒªãƒŽãƒ³ã€€"""		;
--"æ”¹é€ è€…âˆšâˆš"""		;
--ç¥ž						;
--"ã†ã‚“ã¡ã€€"""			;
--"æœ€å¼·"""				;
--é¾						;
--ãƒ›ã‚¿ãƒ«					;
--ç¥ž						;
--ã„						;
--ç¥ž						;
--ã¿						;
--"æœ€å¼·"""				;
--ç¥ž						;
--"çŽ‹ã€€ã€€ã€€"""			;
--æ–­						;
--æ­»						;
--W							;
--ç¥ž						;
--ç¥ž						;
--"æ™‚åˆ»è¡¨âˆšã€€ã€€"""	;
--é¾ç¥ž						;
--"æœ€å¼·ç ´å£Šç¥ž"""		;
--"ç¥ž"""					;
--"ç¥žã€€ã€€ã€€"""			;

-- select * from players where player_country like '';
-- delete from players where player_country like '';

	
	-- Problema con datos repetidos en tabla courses --

-- select * from courses order by player_maker;

-- Recuento de cuantos mapas ha creado cada jugador
-- select player_maker, COUNT(course_id) as cuenta from courses group by player_maker order by cuenta desc;

-- Ver datos de mapas que no tengan informacion de creador
-- select * from courses order by player_maker,title;
-- select * from courses where  player_maker like '' order by title;
  
-- Actualizar datos de creador de mapa de acuerdo a los 5 primeros

-- Xavierol69
-- update courses set player_maker = 'Xavierol69' where title like 'A (not so) Beautiful Mind';

--Zerodius
/* update courses set player_maker = 'Zerodius' where title like 'Cy-Zo Mario World'
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
or title like 'Fungal Infection'; */

--JustinDianaRalf
/*update courses set player_maker = 'JustinDianaRalf' where title like 'gefährlich.'
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
or title like 'Mr. Speed';*/

--drmsj1983
/*update courses set player_maker = 'drmsj1983' where title like 'Lost Luftschif'
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
or title like 'Slippy Saves the Day Again';*/


--Shiraur
/*update courses set player_maker = 'Shiraur' where player_maker like '';*/

 
select * from courses; 

select * from course_meta order by first_clear;