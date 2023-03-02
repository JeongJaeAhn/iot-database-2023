-- INSERT
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('AJJ', '안정재', 1994, '부산', '010', '71441723', 169, '2023-03-02');

-- 컬럼을 다 적을때 입력안할 컬럼은 NULL로 지정
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('HGS', '홍길순', 2000, '한양', NULL, NULL, NULL, NULL);

-- NULL 컬럼은 생략가능
INSERT INTO usertbl
(userID, name, birthYear, addr)
VALUES
('HGS', '홍길순', 2000, '한양');

-- 컬럼 지정을 생략가능(단, 입력할 값의 순서가 컬럼순서랑 일치해야함)
INSERT INTO usertbl VALUES
('HGS', '홍길순', 2000, '한양', NULL, NULL, NULL, NULL);

-- AUTO_INCREMENT 의 경우 필드값을 입력하지 않아도 됨
INSERT INTO buytbl
(userID, prodName, groupName, price, amount)
VALUES
('AJJ', '노트북', '전자', 500000, 1);