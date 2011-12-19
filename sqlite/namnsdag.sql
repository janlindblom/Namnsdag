CREATE TABLE namnsdag (year integer NOT NULL DEFAULT 2012,month integer NOT NULL DEFAULT 1,day integer NOT NULL DEFAULT 1,namn1 text NOT NULL,namn2 text,namn3 text,PRIMARY KEY (year,month,day,namn1));
CREATE INDEX datum ON namnsdag (year,month,day);
CREATE INDEX namn1 ON namnsdag (namn1);
CREATE INDEX namn2 ON namnsdag (namn2);
CREATE INDEX namn3 ON namnsdag (namn3);
