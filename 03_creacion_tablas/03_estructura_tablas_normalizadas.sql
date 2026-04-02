BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cafe" (
	"id_cafe"	INTEGER NOT NULL,
	"nombre_cafe"	TEXT NOT NULL,
	"origen_cafe"	TEXT NOT NULL,
	"proceso_cafe"	TEXT NOT NULL,
	"nivel_tueste"	TEXT NOT NULL,
	PRIMARY KEY("id_cafe")
);
CREATE TABLE IF NOT EXISTS "cliente" (
	"id_cliente"	INTEGER NOT NULL,
	"nombre_cliente"	TEXT NOT NULL,
	"email_cliente"	TEXT NOT NULL,
	"id_zona"	INTEGER NOT NULL,
	PRIMARY KEY("id_cliente"),
	FOREIGN KEY("id_zona") REFERENCES "zona"("id_zona")
);
CREATE TABLE IF NOT EXISTS "detalle_venta" (
	"id_venta"	INTEGER NOT NULL,
	"id_cafe"	INTEGER NOT NULL,
	"formato_paquete"	TEXT NOT NULL,
	"precio_unitario"	REAL NOT NULL,
	"total_venta"	REAL NOT NULL,
	"cantidad"	INTEGER NOT NULL,
	PRIMARY KEY("id_venta","id_cafe","formato_paquete"),
	FOREIGN KEY("id_cafe") REFERENCES "cafe"("id_cafe"),
	FOREIGN KEY("id_venta") REFERENCES "venta"("id_venta")
);
CREATE TABLE IF NOT EXISTS "valoraciones" (
	"id_venta"	INTEGER NOT NULL,
	"id_cafe"	INTEGER NOT NULL,
	"id_cliente"	INTEGER NOT NULL,
	"valoracion"	INTEGER,
	"comentario_valoracion"	TEXT,
	PRIMARY KEY("id_venta","id_cafe"),
	FOREIGN KEY("id_cafe") REFERENCES "cafe"("id_cafe"),
	FOREIGN KEY("id_cliente") REFERENCES "cliente"("id_cliente"),
	FOREIGN KEY("id_venta") REFERENCES "venta"("id_venta")
);
CREATE TABLE IF NOT EXISTS "venta" (
	"id_venta"	INTEGER NOT NULL,
	"fecha_venta"	TEXT NOT NULL,
	"canal_venta"	TEXT NOT NULL,
	"id_cliente"	INTEGER NOT NULL,
	PRIMARY KEY("id_venta"),
	FOREIGN KEY("id_cliente") REFERENCES "cliente"("id_cliente")
);
CREATE TABLE IF NOT EXISTS "zona" (
	"id_zona"	INTEGER NOT NULL,
	"nombre_zona"	TEXT NOT NULL,
	PRIMARY KEY("id_zona")
);
INSERT INTO "cafe" VALUES (1,'Colombia Huila','Colombia','Lavado','Medio');
INSERT INTO "cafe" VALUES (2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro');
INSERT INTO "cafe" VALUES (3,'Brasil Cerrado','Brasil','Natural','Medio');
INSERT INTO "cafe" VALUES (4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro');
INSERT INTO "cafe" VALUES (5,'Peru Cajamarca','Peru','Lavado','Claro');
INSERT INTO "cafe" VALUES (6,'Kenia Nyeri','Kenia','Lavado','Claro');
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
INSERT INTO "detalle_venta" VALUES (1001,1,'250g',10.5,21.0,2);
INSERT INTO "detalle_venta" VALUES (1001,2,'250g',12.0,12.0,1);
INSERT INTO "detalle_venta" VALUES (1002,3,'500g',18.0,18.0,1);
INSERT INTO "detalle_venta" VALUES (1003,2,'250g',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (1004,4,'1000',30.0,30.0,1);
INSERT INTO "detalle_venta" VALUES (1005,1,'500g',19.5,19.5,1);
INSERT INTO "detalle_venta" VALUES (1005,5,'250g',11.8,11.8,1);
INSERT INTO "detalle_venta" VALUES (1006,6,'250g',13.2,26.4,2);
INSERT INTO "detalle_venta" VALUES (1007,3,'250g',9.8,29.4,3);
INSERT INTO "detalle_venta" VALUES (1008,2,'500g',22.5,22.5,1);
INSERT INTO "detalle_venta" VALUES (1009,5,'500g',20.0,20.0,1);
INSERT INTO "detalle_venta" VALUES (1010,4,'250g',11.5,23.0,2);
INSERT INTO "detalle_venta" VALUES (1011,6,'500g',24.0,24.0,1);
INSERT INTO "detalle_venta" VALUES (1012,1,'250g',10.5,21.0,2);
INSERT INTO "detalle_venta" VALUES (1012,2,'250g',12.0,12.0,1);
INSERT INTO "detalle_venta" VALUES (1013,2,'250g',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (1014,1,'500g',19.5,19.5,1);
INSERT INTO "detalle_venta" VALUES (2001,1,'1000',10.81,32.43,3);
INSERT INTO "detalle_venta" VALUES (3001,1,'250g',11.13,22.26,2);
INSERT INTO "detalle_venta" VALUES (4001,1,'500g',10.5,31.5,3);
INSERT INTO "detalle_venta" VALUES (5001,1,'1000',10.81,21.62,2);
INSERT INTO "detalle_venta" VALUES (6001,1,'250g',11.13,33.39,3);
INSERT INTO "detalle_venta" VALUES (7001,1,'500g',10.5,21.0,2);
INSERT INTO "detalle_venta" VALUES (2001,2,'250g',12.36,24.72,2);
INSERT INTO "detalle_venta" VALUES (3001,2,'500g',12.72,12.72,1);
INSERT INTO "detalle_venta" VALUES (4001,2,'1000',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (5001,2,'250g',12.36,12.36,1);
INSERT INTO "detalle_venta" VALUES (6001,2,'500g',12.72,25.44,2);
INSERT INTO "detalle_venta" VALUES (7001,2,'1000',12.0,12.0,1);
INSERT INTO "detalle_venta" VALUES (2002,3,'500g',18.54,37.08,2);
INSERT INTO "detalle_venta" VALUES (3002,3,'1000',19.08,19.08,1);
INSERT INTO "detalle_venta" VALUES (4002,3,'250g',18.0,36.0,2);
INSERT INTO "detalle_venta" VALUES (5002,3,'500g',18.54,18.54,1);
INSERT INTO "detalle_venta" VALUES (6002,3,'1000',19.08,38.16,2);
INSERT INTO "detalle_venta" VALUES (7002,3,'250g',18.0,18.0,1);
INSERT INTO "detalle_venta" VALUES (2003,2,'250g',12.36,37.08,3);
INSERT INTO "detalle_venta" VALUES (3003,2,'500g',12.72,25.44,2);
INSERT INTO "detalle_venta" VALUES (4003,2,'1000',12.0,36.0,3);
INSERT INTO "detalle_venta" VALUES (5003,2,'250g',12.36,24.72,2);
INSERT INTO "detalle_venta" VALUES (6003,2,'500g',12.72,38.16,3);
INSERT INTO "detalle_venta" VALUES (7003,2,'1000',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (2004,4,'1000',30.9,61.8,2);
INSERT INTO "detalle_venta" VALUES (3004,4,'250g',31.8,31.8,1);
INSERT INTO "detalle_venta" VALUES (4004,4,'500g',30.0,60.0,2);
INSERT INTO "detalle_venta" VALUES (5004,4,'1000',30.9,30.9,1);
INSERT INTO "detalle_venta" VALUES (6004,4,'250g',31.8,63.6,2);
INSERT INTO "detalle_venta" VALUES (7004,4,'500g',30.0,30.0,1);
INSERT INTO "detalle_venta" VALUES (2005,1,'1000',20.09,40.18,2);
INSERT INTO "detalle_venta" VALUES (3005,1,'250g',20.67,20.67,1);
INSERT INTO "detalle_venta" VALUES (4005,1,'500g',19.5,39.0,2);
INSERT INTO "detalle_venta" VALUES (5005,1,'1000',20.09,20.09,1);
INSERT INTO "detalle_venta" VALUES (6005,1,'250g',20.67,41.34,2);
INSERT INTO "detalle_venta" VALUES (7005,1,'500g',19.5,19.5,1);
INSERT INTO "detalle_venta" VALUES (2005,5,'250g',12.15,24.3,2);
INSERT INTO "detalle_venta" VALUES (3005,5,'500g',12.51,12.51,1);
INSERT INTO "detalle_venta" VALUES (4005,5,'1000',11.8,23.6,2);
INSERT INTO "detalle_venta" VALUES (5005,5,'250g',12.15,12.15,1);
INSERT INTO "detalle_venta" VALUES (6005,5,'500g',12.51,25.02,2);
INSERT INTO "detalle_venta" VALUES (7005,5,'1000',11.8,11.8,1);
INSERT INTO "detalle_venta" VALUES (2006,6,'500g',13.6,40.8,3);
INSERT INTO "detalle_venta" VALUES (3006,6,'1000',13.99,27.98,2);
INSERT INTO "detalle_venta" VALUES (4006,6,'250g',13.2,39.6,3);
INSERT INTO "detalle_venta" VALUES (5006,6,'500g',13.6,27.2,2);
INSERT INTO "detalle_venta" VALUES (6006,6,'1000',13.99,41.97,3);
INSERT INTO "detalle_venta" VALUES (7006,6,'250g',13.2,26.4,2);
INSERT INTO "detalle_venta" VALUES (2007,3,'500g',10.09,30.27,3);
INSERT INTO "detalle_venta" VALUES (3007,3,'1000',10.39,31.17,3);
INSERT INTO "detalle_venta" VALUES (4007,3,'250g',9.8,29.4,3);
INSERT INTO "detalle_venta" VALUES (5007,3,'500g',10.09,30.27,3);
INSERT INTO "detalle_venta" VALUES (6007,3,'1000',10.39,31.17,3);
INSERT INTO "detalle_venta" VALUES (7007,3,'250g',9.8,29.4,3);
INSERT INTO "detalle_venta" VALUES (2008,2,'250g',23.18,46.36,2);
INSERT INTO "detalle_venta" VALUES (3008,2,'500g',23.85,23.85,1);
INSERT INTO "detalle_venta" VALUES (4008,2,'1000',22.5,45.0,2);
INSERT INTO "detalle_venta" VALUES (5008,2,'250g',23.18,23.18,1);
INSERT INTO "detalle_venta" VALUES (6008,2,'500g',23.85,47.7,2);
INSERT INTO "detalle_venta" VALUES (7008,2,'1000',22.5,22.5,1);
INSERT INTO "detalle_venta" VALUES (2009,5,'250g',20.6,41.2,2);
INSERT INTO "detalle_venta" VALUES (3009,5,'500g',21.2,21.2,1);
INSERT INTO "detalle_venta" VALUES (4009,5,'1000',20.0,40.0,2);
INSERT INTO "detalle_venta" VALUES (5009,5,'250g',20.6,20.6,1);
INSERT INTO "detalle_venta" VALUES (6009,5,'500g',21.2,42.4,2);
INSERT INTO "detalle_venta" VALUES (7009,5,'1000',20.0,20.0,1);
INSERT INTO "detalle_venta" VALUES (2010,4,'1000',11.85,35.55,3);
INSERT INTO "detalle_venta" VALUES (3010,4,'250g',12.19,24.38,2);
INSERT INTO "detalle_venta" VALUES (4010,4,'500g',11.5,34.5,3);
INSERT INTO "detalle_venta" VALUES (5010,4,'1000',11.85,23.7,2);
INSERT INTO "detalle_venta" VALUES (6010,4,'250g',12.19,36.57,3);
INSERT INTO "detalle_venta" VALUES (7010,4,'500g',11.5,23.0,2);
INSERT INTO "detalle_venta" VALUES (2011,6,'500g',24.72,49.44,2);
INSERT INTO "detalle_venta" VALUES (3011,6,'1000',25.44,25.44,1);
INSERT INTO "detalle_venta" VALUES (4011,6,'250g',24.0,48.0,2);
INSERT INTO "detalle_venta" VALUES (5011,6,'500g',24.72,24.72,1);
INSERT INTO "detalle_venta" VALUES (6011,6,'1000',25.44,50.88,2);
INSERT INTO "detalle_venta" VALUES (7011,6,'250g',24.0,24.0,1);
INSERT INTO "detalle_venta" VALUES (2012,1,'1000',10.81,32.43,3);
INSERT INTO "detalle_venta" VALUES (3012,1,'250g',11.13,22.26,2);
INSERT INTO "detalle_venta" VALUES (4012,1,'500g',10.5,31.5,3);
INSERT INTO "detalle_venta" VALUES (5012,1,'1000',10.81,21.62,2);
INSERT INTO "detalle_venta" VALUES (6012,1,'250g',11.13,33.39,3);
INSERT INTO "detalle_venta" VALUES (7012,1,'500g',10.5,21.0,2);
INSERT INTO "detalle_venta" VALUES (2012,2,'250g',12.36,24.72,2);
INSERT INTO "detalle_venta" VALUES (3012,2,'500g',12.72,12.72,1);
INSERT INTO "detalle_venta" VALUES (4012,2,'1000',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (5012,2,'250g',12.36,12.36,1);
INSERT INTO "detalle_venta" VALUES (6012,2,'500g',12.72,25.44,2);
INSERT INTO "detalle_venta" VALUES (7012,2,'1000',12.0,12.0,1);
INSERT INTO "detalle_venta" VALUES (2013,2,'250g',12.36,37.08,3);
INSERT INTO "detalle_venta" VALUES (3013,2,'500g',12.72,25.44,2);
INSERT INTO "detalle_venta" VALUES (4013,2,'1000',12.0,36.0,3);
INSERT INTO "detalle_venta" VALUES (5013,2,'250g',12.36,24.72,2);
INSERT INTO "detalle_venta" VALUES (6013,2,'500g',12.72,38.16,3);
INSERT INTO "detalle_venta" VALUES (7013,2,'1000',12.0,24.0,2);
INSERT INTO "detalle_venta" VALUES (2014,1,'1000',20.09,40.18,2);
INSERT INTO "detalle_venta" VALUES (3014,1,'250g',20.67,20.67,1);
INSERT INTO "detalle_venta" VALUES (4014,1,'500g',19.5,39.0,2);
INSERT INTO "detalle_venta" VALUES (5014,1,'1000',20.09,20.09,1);
INSERT INTO "detalle_venta" VALUES (6014,1,'250g',20.67,41.34,2);
INSERT INTO "detalle_venta" VALUES (7014,1,'500g',19.5,19.5,1);
INSERT INTO "valoraciones" VALUES (1001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (1001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (1002,3,102,4,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (1003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (1004,4,104,4,'Muy versatil');
INSERT INTO "valoraciones" VALUES (1005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (1005,5,105,4,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (1006,6,106,4,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (1007,3,107,3,'Correcto');
INSERT INTO "valoraciones" VALUES (1008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (1009,5,109,4,'Dulce');
INSERT INTO "valoraciones" VALUES (1010,4,110,4,'Chocolate');
INSERT INTO "valoraciones" VALUES (1011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (1012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (1012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (1013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (1014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (2001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (3001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (4001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (5001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (6001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (7001,1,101,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (2001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (3001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (4001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (5001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (6001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (7001,2,101,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (2002,3,102,5,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (3002,3,102,4,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (4002,3,102,5,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (5002,3,102,4,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (6002,3,102,5,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (7002,3,102,4,'Buen cuerpo');
INSERT INTO "valoraciones" VALUES (2003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (3003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (4003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (5003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (6003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (7003,2,103,5,'Top para filtro');
INSERT INTO "valoraciones" VALUES (2004,4,104,5,'Muy versatil');
INSERT INTO "valoraciones" VALUES (3004,4,104,4,'Muy versatil');
INSERT INTO "valoraciones" VALUES (4004,4,104,5,'Muy versatil');
INSERT INTO "valoraciones" VALUES (5004,4,104,4,'Muy versatil');
INSERT INTO "valoraciones" VALUES (6004,4,104,5,'Muy versatil');
INSERT INTO "valoraciones" VALUES (7004,4,104,4,'Muy versatil');
INSERT INTO "valoraciones" VALUES (2005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (3005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (4005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (5005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (6005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (7005,1,105,5,'Mi favorito');
INSERT INTO "valoraciones" VALUES (2005,5,105,5,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (3005,5,105,4,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (4005,5,105,5,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (5005,5,105,4,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (6005,5,105,5,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (7005,5,105,4,'Suave y dulce');
INSERT INTO "valoraciones" VALUES (2006,6,106,5,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (3006,6,106,4,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (4006,6,106,5,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (5006,6,106,4,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (6006,6,106,5,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (7006,6,106,4,'Acidez brillante');
INSERT INTO "valoraciones" VALUES (2007,3,107,4,'Correcto');
INSERT INTO "valoraciones" VALUES (3007,3,107,3,'Correcto');
INSERT INTO "valoraciones" VALUES (4007,3,107,4,'Correcto');
INSERT INTO "valoraciones" VALUES (5007,3,107,3,'Correcto');
INSERT INTO "valoraciones" VALUES (6007,3,107,4,'Correcto');
INSERT INTO "valoraciones" VALUES (7007,3,107,3,'Correcto');
INSERT INTO "valoraciones" VALUES (2008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (3008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (4008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (5008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (6008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (7008,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (2009,5,109,5,'Dulce');
INSERT INTO "valoraciones" VALUES (3009,5,109,4,'Dulce');
INSERT INTO "valoraciones" VALUES (4009,5,109,5,'Dulce');
INSERT INTO "valoraciones" VALUES (5009,5,109,4,'Dulce');
INSERT INTO "valoraciones" VALUES (6009,5,109,5,'Dulce');
INSERT INTO "valoraciones" VALUES (7009,5,109,4,'Dulce');
INSERT INTO "valoraciones" VALUES (2010,4,110,5,'Chocolate');
INSERT INTO "valoraciones" VALUES (3010,4,110,4,'Chocolate');
INSERT INTO "valoraciones" VALUES (4010,4,110,5,'Chocolate');
INSERT INTO "valoraciones" VALUES (5010,4,110,4,'Chocolate');
INSERT INTO "valoraciones" VALUES (6010,4,110,5,'Chocolate');
INSERT INTO "valoraciones" VALUES (7010,4,110,4,'Chocolate');
INSERT INTO "valoraciones" VALUES (2011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (3011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (4011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (5011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (6011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (7011,6,101,5,'Espectacular en V60');
INSERT INTO "valoraciones" VALUES (2012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (3012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (4012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (5012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (6012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (7012,1,103,5,'Nunca falla');
INSERT INTO "valoraciones" VALUES (2012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (3012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (4012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (5012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (6012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (7012,2,103,5,'Aromatico');
INSERT INTO "valoraciones" VALUES (2013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (3013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (4013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (5013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (6013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (7013,2,108,5,'Muy floral');
INSERT INTO "valoraciones" VALUES (2014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (3014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (4014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (5014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (6014,1,110,5,'Muy equilibrado');
INSERT INTO "valoraciones" VALUES (7014,1,110,5,'Muy equilibrado');
INSERT INTO "venta" VALUES (1001,'2026-02-07','tienda',101);
INSERT INTO "venta" VALUES (1002,'2026-02-07','online',102);
INSERT INTO "venta" VALUES (1003,'2026-02-14','tienda',103);
INSERT INTO "venta" VALUES (1004,'2026-02-14','online',104);
INSERT INTO "venta" VALUES (1005,'2026-02-21','tienda',105);
INSERT INTO "venta" VALUES (1006,'2026-02-21','online',106);
INSERT INTO "venta" VALUES (1007,'2026-02-28','tienda',107);
INSERT INTO "venta" VALUES (1008,'2026-02-28','online',108);
INSERT INTO "venta" VALUES (1009,'2026-03-07','tienda',109);
INSERT INTO "venta" VALUES (1010,'2026-03-07','online',110);
INSERT INTO "venta" VALUES (1011,'2026-03-14','online',101);
INSERT INTO "venta" VALUES (1012,'2026-03-14','tienda',103);
INSERT INTO "venta" VALUES (1013,'2026-03-21','online',108);
INSERT INTO "venta" VALUES (1014,'2026-03-21','tienda',110);
INSERT INTO "venta" VALUES (2001,'2026-02-14','online',101);
INSERT INTO "venta" VALUES (2002,'2026-02-14','tienda',102);
INSERT INTO "venta" VALUES (2003,'2026-02-21','online',103);
INSERT INTO "venta" VALUES (2004,'2026-02-21','tienda',104);
INSERT INTO "venta" VALUES (2005,'2026-02-28','online',105);
INSERT INTO "venta" VALUES (2006,'2026-02-28','tienda',106);
INSERT INTO "venta" VALUES (2007,'2026-03-07','online',107);
INSERT INTO "venta" VALUES (2008,'2026-03-07','tienda',108);
INSERT INTO "venta" VALUES (2009,'2026-03-14','online',109);
INSERT INTO "venta" VALUES (2010,'2026-03-14','tienda',110);
INSERT INTO "venta" VALUES (2011,'2026-03-21','online',101);
INSERT INTO "venta" VALUES (2012,'2026-03-21','tienda',103);
INSERT INTO "venta" VALUES (2013,'2026-03-28','online',108);
INSERT INTO "venta" VALUES (2014,'2026-03-28','tienda',110);
INSERT INTO "venta" VALUES (3001,'2026-02-21','tienda',101);
INSERT INTO "venta" VALUES (3002,'2026-02-21','online',102);
INSERT INTO "venta" VALUES (3003,'2026-02-28','tienda',103);
INSERT INTO "venta" VALUES (3004,'2026-02-28','online',104);
INSERT INTO "venta" VALUES (3005,'2026-03-07','tienda',105);
INSERT INTO "venta" VALUES (3006,'2026-03-07','online',106);
INSERT INTO "venta" VALUES (3007,'2026-03-14','tienda',107);
INSERT INTO "venta" VALUES (3008,'2026-03-14','online',108);
INSERT INTO "venta" VALUES (3009,'2026-03-21','tienda',109);
INSERT INTO "venta" VALUES (3010,'2026-03-21','online',110);
INSERT INTO "venta" VALUES (3011,'2026-03-28','tienda',101);
INSERT INTO "venta" VALUES (3012,'2026-03-28','online',103);
INSERT INTO "venta" VALUES (3013,'2026-04-04','tienda',108);
INSERT INTO "venta" VALUES (3014,'2026-04-04','online',110);
INSERT INTO "venta" VALUES (4001,'2026-02-28','online',101);
INSERT INTO "venta" VALUES (4002,'2026-02-28','tienda',102);
INSERT INTO "venta" VALUES (4003,'2026-03-07','online',103);
INSERT INTO "venta" VALUES (4004,'2026-03-07','tienda',104);
INSERT INTO "venta" VALUES (4005,'2026-03-14','online',105);
INSERT INTO "venta" VALUES (4006,'2026-03-14','tienda',106);
INSERT INTO "venta" VALUES (4007,'2026-03-21','online',107);
INSERT INTO "venta" VALUES (4008,'2026-03-21','tienda',108);
INSERT INTO "venta" VALUES (4009,'2026-03-28','online',109);
INSERT INTO "venta" VALUES (4010,'2026-03-28','tienda',110);
INSERT INTO "venta" VALUES (4011,'2026-04-04','online',101);
INSERT INTO "venta" VALUES (4012,'2026-04-04','tienda',103);
INSERT INTO "venta" VALUES (4013,'2026-04-11','online',108);
INSERT INTO "venta" VALUES (4014,'2026-04-11','tienda',110);
INSERT INTO "venta" VALUES (5001,'2026-03-07','tienda',101);
INSERT INTO "venta" VALUES (5002,'2026-03-07','online',102);
INSERT INTO "venta" VALUES (5003,'2026-03-14','tienda',103);
INSERT INTO "venta" VALUES (5004,'2026-03-14','online',104);
INSERT INTO "venta" VALUES (5005,'2026-03-21','tienda',105);
INSERT INTO "venta" VALUES (5006,'2026-03-21','online',106);
INSERT INTO "venta" VALUES (5007,'2026-03-28','tienda',107);
INSERT INTO "venta" VALUES (5008,'2026-03-28','online',108);
INSERT INTO "venta" VALUES (5009,'2026-04-04','tienda',109);
INSERT INTO "venta" VALUES (5010,'2026-04-04','online',110);
INSERT INTO "venta" VALUES (5011,'2026-04-11','tienda',101);
INSERT INTO "venta" VALUES (5012,'2026-04-11','online',103);
INSERT INTO "venta" VALUES (5013,'2026-04-18','tienda',108);
INSERT INTO "venta" VALUES (5014,'2026-04-18','online',110);
INSERT INTO "venta" VALUES (6001,'2026-03-14','online',101);
INSERT INTO "venta" VALUES (6002,'2026-03-14','tienda',102);
INSERT INTO "venta" VALUES (6003,'2026-03-21','online',103);
INSERT INTO "venta" VALUES (6004,'2026-03-21','tienda',104);
INSERT INTO "venta" VALUES (6005,'2026-03-28','online',105);
INSERT INTO "venta" VALUES (6006,'2026-03-28','tienda',106);
INSERT INTO "venta" VALUES (6007,'2026-04-04','online',107);
INSERT INTO "venta" VALUES (6008,'2026-04-04','tienda',108);
INSERT INTO "venta" VALUES (6009,'2026-04-11','online',109);
INSERT INTO "venta" VALUES (6010,'2026-04-11','tienda',110);
INSERT INTO "venta" VALUES (6011,'2026-04-18','online',101);
INSERT INTO "venta" VALUES (6012,'2026-04-18','tienda',103);
INSERT INTO "venta" VALUES (6013,'2026-04-25','online',108);
INSERT INTO "venta" VALUES (6014,'2026-04-25','tienda',110);
INSERT INTO "venta" VALUES (7001,'2026-03-21','tienda',101);
INSERT INTO "venta" VALUES (7002,'2026-03-21','online',102);
INSERT INTO "venta" VALUES (7003,'2026-03-28','tienda',103);
INSERT INTO "venta" VALUES (7004,'2026-03-28','online',104);
INSERT INTO "venta" VALUES (7005,'2026-04-04','tienda',105);
INSERT INTO "venta" VALUES (7006,'2026-04-04','online',106);
INSERT INTO "venta" VALUES (7007,'2026-04-11','tienda',107);
INSERT INTO "venta" VALUES (7008,'2026-04-11','online',108);
INSERT INTO "venta" VALUES (7009,'2026-04-18','tienda',109);
INSERT INTO "venta" VALUES (7010,'2026-04-18','online',110);
INSERT INTO "venta" VALUES (7011,'2026-04-25','tienda',101);
INSERT INTO "venta" VALUES (7012,'2026-04-25','online',103);
INSERT INTO "venta" VALUES (7013,'2026-05-02','tienda',108);
INSERT INTO "venta" VALUES (7014,'2026-05-02','online',110);
INSERT INTO "zona" VALUES (1,'Oviedo');
INSERT INTO "zona" VALUES (2,'Gijon');
INSERT INTO "zona" VALUES (3,'Aviles');
INSERT INTO "zona" VALUES (4,'Nava');
INSERT INTO "zona" VALUES (5,'Villaviciosa');
INSERT INTO "zona" VALUES (6,'Pola de Lena');
COMMIT;
