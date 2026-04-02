-- Pistas (sin solucion):
-- 1) Busca redundancias: cliente, cafe y zona se repiten muchas veces.
-- 2) Mira la clave candidata y decide si conviene separar cabecera/detalle.
-- 3) Ojo con dependencias funcionales tipo id_cafe -> nombre_cafe, origen_cafe...
-- 4) Ojo con dependencias tipo id_cliente -> nombre_cliente, email_cliente, id_zona.
-- 5) Si cambias una zona en muchas filas, tienes problema de actualizacion.

-- Comprobaciones utiles antes de empezar a normalizar:
-- Cuántas filas tiene el archivo: 119
SELECT COUNT(*) AS filas_raw FROM ventas_cafe_raw;
-- Id de ventas diferentes: 98
SELECT COUNT(DISTINCT id_venta) AS ventas_unicas_raw FROM ventas_cafe_raw;
-- Total facturación: 3371.48
SELECT ROUND(SUM(total_venta), 2) AS facturacion_raw FROM ventas_cafe_raw;

-- Piensalo asi (version facil):
-- 1. cosas que describen "quien" o "que" (por ejemplo clientes, productos, zonas),

-- 2. la venta principal (id, fecha, canal),
SELECT id_venta,

-- 3. las lineas de esa venta (producto, cantidad, precio),
-- 4. datos extra si hacen falta (por ejemplo valoraciones).

-- ## Parte A - Diagnostico
-- Sobre `ventas_cafe_raw`, detectad al menos:
-- 1. 6 problemas de diseno o calidad de dato.
-- 2. 1 anomalia de insercion.
-- 3. 1 anomalia de actualizacion.
-- 4. 1 anomalia de borrado.

-- ### 3.1 Crear tablas

-- ```sql
-- CREATE TABLE entidad_maestra_A (
--   id_A INTEGER PRIMARY KEY,
--   atributo_A1 TEXT,
--   atributo_A2 TEXT
-- );
-- ### 3.3 Poblar cabecera y detalle
-- INSERT INTO entidad_maestra_A (id_A, atributo_A1, atributo_A2)
-- SELECT DISTINCT campo_id_A, campo_A1, campo_A2
-- FROM ventas_cafe_raw;
-- ```
--
-- CREATE TABLE entidad_evento (
--   id_evento INTEGER PRIMARY KEY,
--   fecha_evento TEXT,
--   id_A INTEGER,
--   FOREIGN KEY (id_A) REFERENCES entidad_maestra_A(id_A)
-- );
-- -- ### 3.3 Poblar cabecera y detalle
-- INSERT INTO entidad_evento (id_evento, fecha_evento, id_A)
-- SELECT DISTINCT id_venta, fecha_venta, campo_id_A
-- FROM ventas_cafe_raw;
-- 
-- CREATE TABLE entidad_detalle (
--   id_evento INTEGER,
--   id_item INTEGER,
--   atributo_detalle TEXT,
--   cantidad INTEGER,
--   PRIMARY KEY (id_evento, id_item),
--   FOREIGN KEY (id_evento) REFERENCES entidad_evento(id_evento)
-- );
-- INSERT INTO entidad_detalle (id_evento, id_item, atributo_detalle, cantidad)
-- SELECT id_venta, campo_id_item, campo_detalle, campo_cantidad
-- FROM ventas_cafe_raw;