CREATE TABLE sqlite_stat1(tbl,idx,stat);
CREATE TABLE undantag (
    "month" INTEGER,
    "day" INTEGER,
    "anledning" TEXT
);
CREATE TABLE namnsdag (
    "month" INTEGER NOT NULL DEFAULT (1),
    "day" INTEGER NOT NULL DEFAULT (1),
    "namn" TEXT NOT NULL
);
CREATE INDEX "datum_index" on namnsdag (month ASC, day ASC);
CREATE UNIQUE INDEX "pk" on namnsdag (month ASC, day ASC, namn ASC);
CREATE INDEX "undantag_index" on undantag (month ASC, day ASC);
CREATE UNIQUE INDEX "pk_undantag" on undantag (month ASC, day ASC, anledning ASC);
