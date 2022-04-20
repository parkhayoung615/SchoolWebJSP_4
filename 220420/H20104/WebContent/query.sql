CREATE TABLE HelloProj (
id varchar2(5),
pwd varchar(5)
);

INSERT INTo HelloProj values ('aa', '11');
INSERT INTo HelloProj values ('bb', '22');
INSERT INTo HelloProj values ('cc', '33');

SELECT * FROM HelloProj;

DROP table HelloProj;