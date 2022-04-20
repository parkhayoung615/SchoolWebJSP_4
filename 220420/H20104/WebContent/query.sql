--// tbl_test1 테이블 생성 (id 필드, pwd 필드);
CREATE TABLE tbl_test1 (
	id varchar2(5),
	pwd varchar(5)
);

--// 레코드 추가
INSERT INTO tbl_test1 VALUES ('aa', '11');
INSERT INTO tbl_test1 VALUES ('bb', '22');
INSERT INTO tbl_test1 VALUES ('cc', '33');

--// tbl_test1 테이블 확인
SELECT * FROM tbl_test1;

--// tbl_test1 테이블 삭제
DROP TABLE tbl_test1;