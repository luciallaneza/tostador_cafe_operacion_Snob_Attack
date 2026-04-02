BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cafe" (
	"id_cafe"	INTEGER NOT NULL,
	"nombre_cafe"	TEXT NOT NULL,
	"origen_cafe"	TEXT NOT NULL,
	"proceso_cafe"	TEXT NOT NULL,
	"nivel_tueste"	TEXT NOT NULL,
	PRIMARY KEY("id_cafe")
);
INSERT INTO "cafe" VALUES (1,'Colombia Huila','Colombia','Lavado','Medio');
INSERT INTO "cafe" VALUES (2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro');
INSERT INTO "cafe" VALUES (3,'Brasil Cerrado','Brasil','Natural','Medio');
INSERT INTO "cafe" VALUES (4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro');
INSERT INTO "cafe" VALUES (5,'Peru Cajamarca','Peru','Lavado','Claro');
INSERT INTO "cafe" VALUES (6,'Kenia Nyeri','Kenia','Lavado','Claro');
COMMIT;
