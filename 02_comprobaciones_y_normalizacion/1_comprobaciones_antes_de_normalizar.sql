-- Comprobaciones utiles antes de empezar a normalizar:

-- Cuántas filas tiene el archivo: 119
SELECT COUNT(*) AS filas_raw FROM ventas_cafe_raw;


-- Id de ventas diferentes: 98
SELECT COUNT(DISTINCT id_venta) AS ventas_unicas_raw FROM ventas_cafe_raw;


-- Total facturación: 3371.48
SELECT ROUND(SUM(total_venta), 2) AS facturacion_raw FROM ventas_cafe_raw;
