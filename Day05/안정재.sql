USE bookrentalshop;

-- 1번 문제
SELECT CONCAT(SUBSTRING(m.Names, 1, 1), ',', SUBSTRING(m.Names, 2, 3)) AS '회원명'
     , SUBSTRING(m.Addr, 4, 4) AS '주소'
     , m.Mobile AS '폰번호'
     , UPPER(m.Email) AS '이메일'
  FROM membertbl AS m
 ORDER BY '회원명' DESC;

-- 2번 문제
SELECT d.Names '장르'
     , b.Author '작가'
     , b.Names '책제목'
  FROM bookstbl AS b
  INNER JOIN divtbl AS d
	 ON b.Division = d.Division;

-- 3번 문제
INSERT INTO divtbl (Division, Names) VALUES ('I002', '네트워크');

-- 4번 문제
UPDATE membertbl SET Levels = 'D', Mobile = '010-9839-9999' WHERE Names = '성명건';

-- 5번 문제
 SELECT COALESCE(d.Names, '--합계--') AS '장르'
	  , CONCAT(FORMAT(SUM(b.Price), 0), '원') AS '장르별 총합계'
   FROM bookstbl AS b, divtbl AS d
  WHERE b.Division = d.Division
  GROUP BY d.Names WITH ROLLUP;