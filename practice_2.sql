-- practice_2

-- 데이터 입력하기
insert into playerTBL(playerName , playerNum , playerPos)
	values ('김지찬' , '1' , 'CF' ),
	('김헌곤' , '2' , 'LF' ),
	('구자욱' , '3' , 'DH' ),
    ('김영웅' , '4' , 'SS' ),
    ('맥키넌' , '5' , '1B' ),
    ('류지혁' , '6' , '3B' ),
    ('이성규' , '7' , 'RF' ),
    ('김재상' , '8' , '2B' ),
    ('이병헌' , '9', 'C' ),
    ('원태인' , '10' , '투수');
    
    desc playerTBL;
    select * from playertbl;