BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cliente" (
	"id_cliente"	INTEGER NOT NULL,
	"nombre_cliente"	TEXT NOT NULL,
	"email_cliente"	TEXT NOT NULL,
	"id_zona"	INTEGER NOT NULL,
	PRIMARY KEY("id_cliente"),
	FOREIGN KEY("id_zona") REFERENCES "zona"("id_zona")
);
INSERT INTO "cliente" VALUES (101,'Aitana Suarez','aitana@tostador.local',1);
INSERT INTO "cliente" VALUES (102,'Bruno Mendez','bruno@tostador.local',2);
INSERT INTO "cliente" VALUES (103,'Carla Mier','carla@tostador.local',3);
INSERT INTO "cliente" VALUES (104,'Diego Alvarez','diego@tostador.local',4);
INSERT INTO "cliente" VALUES (105,'Elena Ruiz','elena@tostador.local',5);
INSERT INTO "cliente" VALUES (106,'Fabian Torre','fabian@tostador.local',6);
INSERT INTO "cliente" VALUES (107,'Gabriela Coto','gabriela@tostador.local',1);
INSERT INTO "cliente" VALUES (108,'Hector Solares','hector@tostador.local',2);
INSERT INTO "cliente" VALUES (109,'Iria Pravia','iria@tostador.local',4);
INSERT INTO "cliente" VALUES (110,'Jorge Cifuentes','jorge@tostador.local',5);
COMMIT;
