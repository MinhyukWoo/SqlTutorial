CREATE TABLE tMember
(
    member VARCHAR(20) PRIMARY KEY, 	-- 아이디
    age INT NOT NULL,                      	-- 나이 
    email VARCHAR(30) NOT NULL,           	-- 이메일
    addr VARCHAR(50) NOT NULL,            	-- 주소
    money INT DEFAULT 1000 NOT NULL,     	-- 예치금
    grade INT DEFAULT 1 NOT NULL,         	-- 고객등급. 1=준회원, 2=정회원, 3=우수회원
    remark VARCHAR(100) NULL             	-- 메모 사항
);

INSERT INTO tMember VALUES ('춘향',16,'1004@naver.com','전남 남원시',20000, 2, '');
INSERT INTO tMember VALUES ('이도령',18,'wolf@gmail.com','서울 신사동',150000, 3, '');
INSERT INTO tMember VALUES ('향단',25,'candy@daum.net','전남 남원시',5000, 2, '');
INSERT INTO tMember VALUES ('방자',28,'devlin@ssang.co.kr','서울 개포동',1000, 1, '요주의 고객');
