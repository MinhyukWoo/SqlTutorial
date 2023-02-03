CREATE TABLE tCategory
(
   category VARCHAR(10) PRIMARY KEY,	-- 분류명
   discount INT NOT NULL,			-- 할인율
   delivery INT NOT NULL,                   	-- 배송비
   takeback CHAR(1)                         	-- 반품 가능성
);

INSERT INTO tCategory (category, discount, delivery, takeback) VALUES ('식품', 0, 3000, 'n');
INSERT INTO tCategory (category, discount, delivery, takeback) VALUES ('패션', 10, 2000, 'y');
INSERT INTO tCategory (category, discount, delivery, takeback) VALUES ('가전', 20, 2500, 'y');
INSERT INTO tCategory (category, discount, delivery, takeback) VALUES ('성인', 5, 1000, 'n');
