¿Qué tenemos en el zip del reto?,
1) TOSTADOR-CAFE-RAW-RETO.sql:
   
Es el “molde” que crea la tabla RAW (desde la que empezáis a trabajar) y mete los datos.
Sirve para generar la base en crudo.,
,

2) tostador-cafe-raw.db:
   
Es esa base ya montada y lista para usar.
Si abrís esta, no hace falta ejecutar el .sql.,
,

3) EJERCICIO-...-ENUNCIADO.md:
   
Es lo que hay que entregar (A diagnóstico, B normalización, C consultas).  ¡Posible extra!,

4) CHULETA-RAW-A-NORMALIZADO.md:
   
Es la guía de cómo hacerlo (crear tablas + insert select + validar).,

Orden recomendado:
Abrir la .db,
Revisar enunciado,
Tomar métricas base (COUNT(*), COUNT(DISTINCT id_venta), SUM(total_venta)),
Normalizar y poblar con INSERT INTO ... SELECT ...,
Volver a validar métricas,
Hacer consultas de negocio,
TIP: si os cuadran las métricas y las PK/FK, vais bien.


1) Objetivo:,
Tener modelo en 3FN funcional.,
Poder reconstruir métricas del raw sin perder datos.,

2) Orden de trabajo,
Crear tablas maestras: clientes, cafes, zonas,
Crear tabla cabecera: ventas (es cabecera pq guarda el dato común de toda la transacción, una compra, no de cada producto de la compra),
Crear tabla detalle: detalle_venta (PK compuesta),
Crear valoraciones (separada de detalle),
Poblar TODO con INSERT INTO ... SELECT ... desde ventas_cafe_raw,

3) Claves (importantísimo),
detalle_venta -> PRIMARY KEY (id_venta, id_cafe),
No se une en una sola celda: son dos columnas juntas como PK.,
valoraciones fuera de detalle_venta.,

4) Validación obligatoria (anti-pérdida),
Antes y después deben cuadrar:
COUNT(*),
COUNT(DISTINCT id_venta),
SUM(total_venta),

Si no cuadra, hay duplicado o pérdida en los JOIN/INSERT.

5) Pista de negocio,
No asumáis precio fijo por café:
En este dataset, precio_unitario varía por contexto (zona/formato).,
Documentad limitación si falta variable de promoción.
