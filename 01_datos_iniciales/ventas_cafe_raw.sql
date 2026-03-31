BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "ventas_cafe_raw" (
	"id_venta"	INTEGER,
	"fecha_venta"	TEXT,
	"id_cliente"	INTEGER,
	"nombre_cliente"	TEXT,
	"email_cliente"	TEXT,
	"id_cafe"	INTEGER,
	"nombre_cafe"	TEXT,
	"origen_cafe"	TEXT,
	"proceso_cafe"	TEXT,
	"nivel_tueste"	TEXT,
	"id_zona"	INTEGER,
	"nombre_zona"	TEXT,
	"canal_venta"	TEXT,
	"formato_paquete"	TEXT,
	"precio_unitario"	REAL,
	"cantidad"	INTEGER,
	"valoracion"	INTEGER,
	"comentario_valoracion"	TEXT,
	"total_venta"	REAL
);
INSERT INTO "ventas_cafe_raw" VALUES (1001,'2026-02-07',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','tienda','250g',10.5,2,5,'Muy equilibrado',21.0);
INSERT INTO "ventas_cafe_raw" VALUES (1001,'2026-02-07',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','tienda','250g',12.0,1,5,'Aromatico',12.0);
INSERT INTO "ventas_cafe_raw" VALUES (1002,'2026-02-07',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','online','500g',18.0,1,4,'Buen cuerpo',18.0);
INSERT INTO "ventas_cafe_raw" VALUES (1003,'2026-02-14',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','250g',12.0,2,5,'Top para filtro',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (1004,'2026-02-14',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','online','1kg',30.0,1,4,'Muy versatil',30.0);
INSERT INTO "ventas_cafe_raw" VALUES (1005,'2026-02-21',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','500g',19.5,1,5,'Mi favorito',19.5);
INSERT INTO "ventas_cafe_raw" VALUES (1005,'2026-02-21',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','tienda','250g',11.8,1,4,'Suave y dulce',11.8);
INSERT INTO "ventas_cafe_raw" VALUES (1006,'2026-02-21',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','online','250g',13.2,2,4,'Acidez brillante',26.4);
INSERT INTO "ventas_cafe_raw" VALUES (1007,'2026-02-28',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','tienda','250g',9.8,3,3,'Correcto',29.4);
INSERT INTO "ventas_cafe_raw" VALUES (1008,'2026-02-28',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','500g',22.5,1,5,'Muy floral',22.5);
INSERT INTO "ventas_cafe_raw" VALUES (1009,'2026-03-07',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','tienda','500g',20.0,1,4,'Dulce',20.0);
INSERT INTO "ventas_cafe_raw" VALUES (1010,'2026-03-07',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','online','250g',11.5,2,4,'Chocolate',23.0);
INSERT INTO "ventas_cafe_raw" VALUES (1011,'2026-03-14',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','online','500g',24.0,1,5,'Espectacular en V60',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (1012,'2026-03-14',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','tienda','250g',10.5,2,5,'Nunca falla',21.0);
INSERT INTO "ventas_cafe_raw" VALUES (1012,'2026-03-14',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','250g',12.0,1,5,'Aromatico',12.0);
INSERT INTO "ventas_cafe_raw" VALUES (1013,'2026-03-21',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','250g',12.0,2,5,'Muy floral',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (1014,'2026-03-21',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','500g',19.5,1,5,'Muy equilibrado',19.5);
INSERT INTO "ventas_cafe_raw" VALUES (2001,'2026-02-14',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','online','1kg',10.81,3,5,'Muy equilibrado',32.43);
INSERT INTO "ventas_cafe_raw" VALUES (3001,'2026-02-21',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','tienda','250g',11.13,2,5,'Muy equilibrado',22.26);
INSERT INTO "ventas_cafe_raw" VALUES (4001,'2026-02-28',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','online','500g',10.5,3,5,'Muy equilibrado',31.5);
INSERT INTO "ventas_cafe_raw" VALUES (5001,'2026-03-07',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','tienda','1kg',10.81,2,5,'Muy equilibrado',21.62);
INSERT INTO "ventas_cafe_raw" VALUES (6001,'2026-03-14',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','online','250g',11.13,3,5,'Muy equilibrado',33.39);
INSERT INTO "ventas_cafe_raw" VALUES (7001,'2026-03-21',101,'Aitana Suarez','aitana@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',1,'Oviedo','tienda','500g',10.5,2,5,'Muy equilibrado',21.0);
INSERT INTO "ventas_cafe_raw" VALUES (2001,'2026-02-14',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','online','250g',12.36,2,5,'Aromatico',24.72);
INSERT INTO "ventas_cafe_raw" VALUES (3001,'2026-02-21',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','tienda','500g',12.72,1,5,'Aromatico',12.72);
INSERT INTO "ventas_cafe_raw" VALUES (4001,'2026-02-28',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','online','1kg',12.0,2,5,'Aromatico',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (5001,'2026-03-07',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','tienda','250g',12.36,1,5,'Aromatico',12.36);
INSERT INTO "ventas_cafe_raw" VALUES (6001,'2026-03-14',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','online','500g',12.72,2,5,'Aromatico',25.44);
INSERT INTO "ventas_cafe_raw" VALUES (7001,'2026-03-21',101,'Aitana Suarez','aitana@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',1,'Oviedo','tienda','1kg',12.0,1,5,'Aromatico',12.0);
INSERT INTO "ventas_cafe_raw" VALUES (2002,'2026-02-14',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','tienda','500g',18.54,2,5,'Buen cuerpo',37.08);
INSERT INTO "ventas_cafe_raw" VALUES (3002,'2026-02-21',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','online','1kg',19.08,1,4,'Buen cuerpo',19.08);
INSERT INTO "ventas_cafe_raw" VALUES (4002,'2026-02-28',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','tienda','250g',18.0,2,5,'Buen cuerpo',36.0);
INSERT INTO "ventas_cafe_raw" VALUES (5002,'2026-03-07',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','online','500g',18.54,1,4,'Buen cuerpo',18.54);
INSERT INTO "ventas_cafe_raw" VALUES (6002,'2026-03-14',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','tienda','1kg',19.08,2,5,'Buen cuerpo',38.16);
INSERT INTO "ventas_cafe_raw" VALUES (7002,'2026-03-21',102,'Bruno Mendez','bruno@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',2,'Gijon','online','250g',18.0,1,4,'Buen cuerpo',18.0);
INSERT INTO "ventas_cafe_raw" VALUES (2003,'2026-02-21',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','250g',12.36,3,5,'Top para filtro',37.08);
INSERT INTO "ventas_cafe_raw" VALUES (3003,'2026-02-28',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','500g',12.72,2,5,'Top para filtro',25.44);
INSERT INTO "ventas_cafe_raw" VALUES (4003,'2026-03-07',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','1kg',12.0,3,5,'Top para filtro',36.0);
INSERT INTO "ventas_cafe_raw" VALUES (5003,'2026-03-14',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','250g',12.36,2,5,'Top para filtro',24.72);
INSERT INTO "ventas_cafe_raw" VALUES (6003,'2026-03-21',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','500g',12.72,3,5,'Top para filtro',38.16);
INSERT INTO "ventas_cafe_raw" VALUES (7003,'2026-03-28',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','1kg',12.0,2,5,'Top para filtro',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (2004,'2026-02-21',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','tienda','1kg',30.9,2,5,'Muy versatil',61.8);
INSERT INTO "ventas_cafe_raw" VALUES (3004,'2026-02-28',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','online','250g',31.8,1,4,'Muy versatil',31.8);
INSERT INTO "ventas_cafe_raw" VALUES (4004,'2026-03-07',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','tienda','500g',30.0,2,5,'Muy versatil',60.0);
INSERT INTO "ventas_cafe_raw" VALUES (5004,'2026-03-14',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','online','1kg',30.9,1,4,'Muy versatil',30.9);
INSERT INTO "ventas_cafe_raw" VALUES (6004,'2026-03-21',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','tienda','250g',31.8,2,5,'Muy versatil',63.6);
INSERT INTO "ventas_cafe_raw" VALUES (7004,'2026-03-28',104,'Diego Alvarez','diego@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',4,'Nava','online','500g',30.0,1,4,'Muy versatil',30.0);
INSERT INTO "ventas_cafe_raw" VALUES (2005,'2026-02-28',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','1kg',20.09,2,5,'Mi favorito',40.18);
INSERT INTO "ventas_cafe_raw" VALUES (3005,'2026-03-07',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','250g',20.67,1,5,'Mi favorito',20.67);
INSERT INTO "ventas_cafe_raw" VALUES (4005,'2026-03-14',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','500g',19.5,2,5,'Mi favorito',39.0);
INSERT INTO "ventas_cafe_raw" VALUES (5005,'2026-03-21',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','1kg',20.09,1,5,'Mi favorito',20.09);
INSERT INTO "ventas_cafe_raw" VALUES (6005,'2026-03-28',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','250g',20.67,2,5,'Mi favorito',41.34);
INSERT INTO "ventas_cafe_raw" VALUES (7005,'2026-04-04',105,'Elena Ruiz','elena@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','500g',19.5,1,5,'Mi favorito',19.5);
INSERT INTO "ventas_cafe_raw" VALUES (2005,'2026-02-28',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','online','250g',12.15,2,5,'Suave y dulce',24.3);
INSERT INTO "ventas_cafe_raw" VALUES (3005,'2026-03-07',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','tienda','500g',12.51,1,4,'Suave y dulce',12.51);
INSERT INTO "ventas_cafe_raw" VALUES (4005,'2026-03-14',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','online','1kg',11.8,2,5,'Suave y dulce',23.6);
INSERT INTO "ventas_cafe_raw" VALUES (5005,'2026-03-21',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','tienda','250g',12.15,1,4,'Suave y dulce',12.15);
INSERT INTO "ventas_cafe_raw" VALUES (6005,'2026-03-28',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','online','500g',12.51,2,5,'Suave y dulce',25.02);
INSERT INTO "ventas_cafe_raw" VALUES (7005,'2026-04-04',105,'Elena Ruiz','elena@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',5,'Villaviciosa','tienda','1kg',11.8,1,4,'Suave y dulce',11.8);
INSERT INTO "ventas_cafe_raw" VALUES (2006,'2026-02-28',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','tienda','500g',13.6,3,5,'Acidez brillante',40.8);
INSERT INTO "ventas_cafe_raw" VALUES (3006,'2026-03-07',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','online','1kg',13.99,2,4,'Acidez brillante',27.98);
INSERT INTO "ventas_cafe_raw" VALUES (4006,'2026-03-14',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','tienda','250g',13.2,3,5,'Acidez brillante',39.6);
INSERT INTO "ventas_cafe_raw" VALUES (5006,'2026-03-21',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','online','500g',13.6,2,4,'Acidez brillante',27.2);
INSERT INTO "ventas_cafe_raw" VALUES (6006,'2026-03-28',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','tienda','1kg',13.99,3,5,'Acidez brillante',41.97);
INSERT INTO "ventas_cafe_raw" VALUES (7006,'2026-04-04',106,'Fabian Torre','fabian@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',6,'Pola de Lena','online','250g',13.2,2,4,'Acidez brillante',26.4);
INSERT INTO "ventas_cafe_raw" VALUES (2007,'2026-03-07',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','online','500g',10.09,3,4,'Correcto',30.27);
INSERT INTO "ventas_cafe_raw" VALUES (3007,'2026-03-14',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','tienda','1kg',10.39,3,3,'Correcto',31.17);
INSERT INTO "ventas_cafe_raw" VALUES (4007,'2026-03-21',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','online','250g',9.8,3,4,'Correcto',29.4);
INSERT INTO "ventas_cafe_raw" VALUES (5007,'2026-03-28',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','tienda','500g',10.09,3,3,'Correcto',30.27);
INSERT INTO "ventas_cafe_raw" VALUES (6007,'2026-04-04',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','online','1kg',10.39,3,4,'Correcto',31.17);
INSERT INTO "ventas_cafe_raw" VALUES (7007,'2026-04-11',107,'Gabriela Coto','gabriela@tostador.local',3,'Brasil Cerrado','Brasil','Natural','Medio',1,'Oviedo','tienda','250g',9.8,3,3,'Correcto',29.4);
INSERT INTO "ventas_cafe_raw" VALUES (2008,'2026-03-07',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','250g',23.18,2,5,'Muy floral',46.36);
INSERT INTO "ventas_cafe_raw" VALUES (3008,'2026-03-14',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','500g',23.85,1,5,'Muy floral',23.85);
INSERT INTO "ventas_cafe_raw" VALUES (4008,'2026-03-21',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','1kg',22.5,2,5,'Muy floral',45.0);
INSERT INTO "ventas_cafe_raw" VALUES (5008,'2026-03-28',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','250g',23.18,1,5,'Muy floral',23.18);
INSERT INTO "ventas_cafe_raw" VALUES (6008,'2026-04-04',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','500g',23.85,2,5,'Muy floral',47.7);
INSERT INTO "ventas_cafe_raw" VALUES (7008,'2026-04-11',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','1kg',22.5,1,5,'Muy floral',22.5);
INSERT INTO "ventas_cafe_raw" VALUES (2009,'2026-03-14',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','online','250g',20.6,2,5,'Dulce',41.2);
INSERT INTO "ventas_cafe_raw" VALUES (3009,'2026-03-21',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','tienda','500g',21.2,1,4,'Dulce',21.2);
INSERT INTO "ventas_cafe_raw" VALUES (4009,'2026-03-28',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','online','1kg',20.0,2,5,'Dulce',40.0);
INSERT INTO "ventas_cafe_raw" VALUES (5009,'2026-04-04',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','tienda','250g',20.6,1,4,'Dulce',20.6);
INSERT INTO "ventas_cafe_raw" VALUES (6009,'2026-04-11',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','online','500g',21.2,2,5,'Dulce',42.4);
INSERT INTO "ventas_cafe_raw" VALUES (7009,'2026-04-18',109,'Iria Pravia','iria@tostador.local',5,'Peru Cajamarca','Peru','Lavado','Claro',4,'Nava','tienda','1kg',20.0,1,4,'Dulce',20.0);
INSERT INTO "ventas_cafe_raw" VALUES (2010,'2026-03-14',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','tienda','1kg',11.85,3,5,'Chocolate',35.55);
INSERT INTO "ventas_cafe_raw" VALUES (3010,'2026-03-21',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','online','250g',12.19,2,4,'Chocolate',24.38);
INSERT INTO "ventas_cafe_raw" VALUES (4010,'2026-03-28',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','tienda','500g',11.5,3,5,'Chocolate',34.5);
INSERT INTO "ventas_cafe_raw" VALUES (5010,'2026-04-04',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','online','1kg',11.85,2,4,'Chocolate',23.7);
INSERT INTO "ventas_cafe_raw" VALUES (6010,'2026-04-11',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','tienda','250g',12.19,3,5,'Chocolate',36.57);
INSERT INTO "ventas_cafe_raw" VALUES (7010,'2026-04-18',110,'Jorge Cifuentes','jorge@tostador.local',4,'Guatemala Antigua','Guatemala','Honey','Medio-Oscuro',5,'Villaviciosa','online','500g',11.5,2,4,'Chocolate',23.0);
INSERT INTO "ventas_cafe_raw" VALUES (2011,'2026-03-21',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','online','500g',24.72,2,5,'Espectacular en V60',49.44);
INSERT INTO "ventas_cafe_raw" VALUES (3011,'2026-03-28',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','tienda','1kg',25.44,1,5,'Espectacular en V60',25.44);
INSERT INTO "ventas_cafe_raw" VALUES (4011,'2026-04-04',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','online','250g',24.0,2,5,'Espectacular en V60',48.0);
INSERT INTO "ventas_cafe_raw" VALUES (5011,'2026-04-11',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','tienda','500g',24.72,1,5,'Espectacular en V60',24.72);
INSERT INTO "ventas_cafe_raw" VALUES (6011,'2026-04-18',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','online','1kg',25.44,2,5,'Espectacular en V60',50.88);
INSERT INTO "ventas_cafe_raw" VALUES (7011,'2026-04-25',101,'Aitana Suarez','aitana@tostador.local',6,'Kenia Nyeri','Kenia','Lavado','Claro',1,'Oviedo','tienda','250g',24.0,1,5,'Espectacular en V60',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (2012,'2026-03-21',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','tienda','1kg',10.81,3,5,'Nunca falla',32.43);
INSERT INTO "ventas_cafe_raw" VALUES (3012,'2026-03-28',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','online','250g',11.13,2,5,'Nunca falla',22.26);
INSERT INTO "ventas_cafe_raw" VALUES (4012,'2026-04-04',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','tienda','500g',10.5,3,5,'Nunca falla',31.5);
INSERT INTO "ventas_cafe_raw" VALUES (5012,'2026-04-11',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','online','1kg',10.81,2,5,'Nunca falla',21.62);
INSERT INTO "ventas_cafe_raw" VALUES (6012,'2026-04-18',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','tienda','250g',11.13,3,5,'Nunca falla',33.39);
INSERT INTO "ventas_cafe_raw" VALUES (7012,'2026-04-25',103,'Carla Mier','carla@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',3,'Aviles','online','500g',10.5,2,5,'Nunca falla',21.0);
INSERT INTO "ventas_cafe_raw" VALUES (2012,'2026-03-21',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','250g',12.36,2,5,'Aromatico',24.72);
INSERT INTO "ventas_cafe_raw" VALUES (3012,'2026-03-28',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','500g',12.72,1,5,'Aromatico',12.72);
INSERT INTO "ventas_cafe_raw" VALUES (4012,'2026-04-04',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','1kg',12.0,2,5,'Aromatico',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (5012,'2026-04-11',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','250g',12.36,1,5,'Aromatico',12.36);
INSERT INTO "ventas_cafe_raw" VALUES (6012,'2026-04-18',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','tienda','500g',12.72,2,5,'Aromatico',25.44);
INSERT INTO "ventas_cafe_raw" VALUES (7012,'2026-04-25',103,'Carla Mier','carla@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',3,'Aviles','online','1kg',12.0,1,5,'Aromatico',12.0);
INSERT INTO "ventas_cafe_raw" VALUES (2013,'2026-03-28',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','250g',12.36,3,5,'Muy floral',37.08);
INSERT INTO "ventas_cafe_raw" VALUES (3013,'2026-04-04',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','500g',12.72,2,5,'Muy floral',25.44);
INSERT INTO "ventas_cafe_raw" VALUES (4013,'2026-04-11',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','1kg',12.0,3,5,'Muy floral',36.0);
INSERT INTO "ventas_cafe_raw" VALUES (5013,'2026-04-18',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','250g',12.36,2,5,'Muy floral',24.72);
INSERT INTO "ventas_cafe_raw" VALUES (6013,'2026-04-25',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','online','500g',12.72,3,5,'Muy floral',38.16);
INSERT INTO "ventas_cafe_raw" VALUES (7013,'2026-05-02',108,'Hector Solares','hector@tostador.local',2,'Etiopia Yirgacheffe','Etiopia','Lavado','Claro',2,'Gijon','tienda','1kg',12.0,2,5,'Muy floral',24.0);
INSERT INTO "ventas_cafe_raw" VALUES (2014,'2026-03-28',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','1kg',20.09,2,5,'Muy equilibrado',40.18);
INSERT INTO "ventas_cafe_raw" VALUES (3014,'2026-04-04',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','250g',20.67,1,5,'Muy equilibrado',20.67);
INSERT INTO "ventas_cafe_raw" VALUES (4014,'2026-04-11',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','500g',19.5,2,5,'Muy equilibrado',39.0);
INSERT INTO "ventas_cafe_raw" VALUES (5014,'2026-04-18',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','1kg',20.09,1,5,'Muy equilibrado',20.09);
INSERT INTO "ventas_cafe_raw" VALUES (6014,'2026-04-25',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','tienda','250g',20.67,2,5,'Muy equilibrado',41.34);
INSERT INTO "ventas_cafe_raw" VALUES (7014,'2026-05-02',110,'Jorge Cifuentes','jorge@tostador.local',1,'Colombia Huila','Colombia','Lavado','Medio',5,'Villaviciosa','online','500g',19.5,1,5,'Muy equilibrado',19.5);
COMMIT;
