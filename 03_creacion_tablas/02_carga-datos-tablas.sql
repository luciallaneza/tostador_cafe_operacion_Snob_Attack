
SELECT COUNT(*) AS filas_raw FROM ventas_cafe_raw;
SELECT COUNT(DISTINCT id_venta) AS ventas_unicas_raw FROM ventas_cafe_raw;
SELECT ROUND(SUM(total_venta), 2) AS facturacion_raw FROM ventas_cafe_raw;


INSERT INTO cafe (id_cafe, nombre_cafe, origen_cafe, proceso_cafe, nivel_tueste)
SELECT DISTINCT id_cafe, nombre_cafe, origen_cafe, proceso_cafe, nivel_tueste
FROM ventas_cafe_raw;

INSERT INTO zona (id_zona, nombre_zona)
SELECT DISTINCT id_zona, nombre_zona
FROM ventas_cafe_raw;

INSERT INTO cliente (id_cliente, nombre_cliente, email_cliente, id_zona)
SELECT DISTINCT id_cliente, nombre_cliente, email_cliente, id_zona
FROM ventas_cafe_raw;

INSERT INTO venta (id_venta, fecha_venta, canal_venta, id_cliente)
SELECT DISTINCT id_venta, fecha_venta, canal_venta, id_cliente
FROM ventas_cafe_raw;

INSERT INTO detalle_venta (id_venta, id_cafe, formato_paquete, precio_unitario, cantidad, total_venta)
SELECT id_venta, id_cafe, formato_paquete, precio_unitario, cantidad, total_venta
FROM ventas_cafe_raw;

INSERT INTO valoraciones (id_venta, id_cafe, id_cliente, valoracion, comentario_valoracion)
SELECT id_venta, id_cafe, id_cliente, valoracion, comentario_valoracion
FROM ventas_cafe_raw;

-- 4) Validacion anti-perdida (obligatoria)
SELECT COUNT(*) AS filas_normalizadas_desde_detalle
FROM detalle_venta;
-- 119

SELECT COUNT(*) AS id_venta
FROM venta;
-- 98

SELECT ROUND(SUM(total_venta), 2) AS facturacion_normalizada
FROM detalle_venta;
-- 3371.48


