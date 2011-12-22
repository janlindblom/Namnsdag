CREATE TABLE namnsdag (year integer NOT NULL DEFAULT 2012,month integer NOT NULL DEFAULT 1,day integer NOT NULL DEFAULT 1,namn1 text NOT NULL,namn2 text,namn3 text,PRIMARY KEY (year,month,day,namn1));
CREATE TABLE undantag (year integer NOT NULL DEFAULT 2012,month integer NOT NULL DEFAULT 1,day integer NOT NULL DEFAULT 1,reason text NOT NULL,PRIMARY KEY (year,month,day,reason));

INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','22','Jonatan','Natanael',NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','23','Adam',NULL,NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','24','Eva',NULL,NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','26','Staffan','Stefan',NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','27','Johannes','Johan',NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','28','Benjamin',NULL,NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','29','Natalia','Natalie',NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','30','Abel','Set',NULL );
INSERT INTO namnsdag ( year,month,day,namn1,namn2,namn3 ) VALUES ( '2011','12','31','Sylvester',NULL,NULL );

CREATE INDEX datum ON namnsdag (year,month,day);
CREATE INDEX namn1 ON namnsdag (namn1);
CREATE INDEX namn2 ON namnsdag (namn2);
CREATE INDEX namn3 ON namnsdag (namn3);
CREATE INDEX datum2 ON undantag (year,month,day);