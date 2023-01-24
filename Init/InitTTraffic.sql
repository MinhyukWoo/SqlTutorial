CREATE TABLE tTraffic
(
	line VARCHAR(10),
	hour INT,
	car VARCHAR(20),
	traffic INT
);

INSERT INTO tTraffic VALUES ('경부', 1, '승용차', 40);
INSERT INTO tTraffic VALUES ('경부', 2, '승용차', 41);
INSERT INTO tTraffic VALUES ('경부', 3, '승용차', 42);
INSERT INTO tTraffic VALUES ('경부', 1, '트럭', 30);
INSERT INTO tTraffic VALUES ('경부', 3, '트럭', 32);
INSERT INTO tTraffic VALUES ('호남', 1, '승용차', 20);
INSERT INTO tTraffic VALUES ('호남', 2, '승용차', 10);
INSERT INTO tTraffic VALUES ('호남', 2, '승용차', 11);
INSERT INTO tTraffic VALUES ('호남', 3, '승용차', 22);
INSERT INTO tTraffic VALUES ('호남', 1, '트럭', 10);
INSERT INTO tTraffic VALUES ('호남', 2, '트럭', 11);
INSERT INTO tTraffic VALUES ('호남', 3, '트럭', 12);