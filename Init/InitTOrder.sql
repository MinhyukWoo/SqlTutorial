-- Only Oracle Start
CREATE TABLE tOrder
(
  orderID INT GENERATED AS IDENTITY PRIMARY KEY,	-- 주문 번호
  member VARCHAR(20) NOT NULL,   		-- 주문자
  item VARCHAR(20) NOT NULL,			-- 상품
  orderDate DATE DEFAULT SYSDATE NOT NULL,	-- 주문 날자
  num INT NOT NULL,				-- 개수
  status INT DEFAULT 1 NOT NULL,			-- 1:주문, 2:배송중, 3:배송완료, 4:반품
  remark VARCHAR2(1000) NULL			-- 메모 사항
);

INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('춘향','청바지',TO_DATE('2019-12-3', 'YYYY-MM-DD'),3,2);
INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('향단','대추',TO_DATE('2019-12-4', 'YYYY-MM-DD'),10,1);
INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('방자','전자담배',TO_DATE('2019-12-2', 'YYYY-MM-DD'),4,1);
INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('향단','사과',TO_DATE('2019-12-5', 'YYYY-MM-DD'),5,2);
INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('흥부','노트북',TO_DATE('2019-12-5', 'YYYY-MM-DD'),2,1);
INSERT INTO tOrder (member,item,orderDate,num,status) VALUES ('방자','핸드폰',TO_DATE('2019-11-1', 'YYYY-MM-DD'),1,3);
-- Only Oracle End
