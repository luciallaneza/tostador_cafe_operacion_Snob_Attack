BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "zona" (
	"id_zona"	INTEGER NOT NULL,
	"nombre_zona"	TEXT NOT NULL,
	PRIMARY KEY("id_zona")
);
INSERT INTO "zona" VALUES (1,'Oviedo');
INSERT INTO "zona" VALUES (2,'Gijon');
INSERT INTO "zona" VALUES (3,'Aviles');
INSERT INTO "zona" VALUES (4,'Nava');
INSERT INTO "zona" VALUES (5,'Villaviciosa');
INSERT INTO "zona" VALUES (6,'Pola de Lena');
COMMIT;
