
![Banner](./imagenes/cafes_y_granos.jpg)

# Tostador de café: "Operacion Snob Attack"


## Contexto (la historia)

Somos el equipo de datos de una marca de cafe de especialidad que quiere romper el mercado.
No queremos ser "otro cafe mas": queremos ser la referencia absoluta para gente exigente que ya no soporta el cafe plano de cadenas masivas.

Y si hace falta una referencia de exigencia: nuestra profe, [Anaïs](https://github.com/Anais-RV), que no soporta torrefactos ni cafés con notas a quemado.

Misión: convertirnos en el distribuidor número 1 para amantes del café premium y destronar el "siempre lo mismo" con datos, estrategia y calidad real.

El reto no es solo vender más.
El reto es vender mejor: el origen correcto, el tueste correcto, al cliente correcto.

Nuestra propuesta de valor:

1. mejores orígenes,
2. tostado más adecuado para cada café,
3. calidad alta y consistente.

Problema: los datos vienen en bruto y con caos.
Si el modelo es malo, tomaremos decisiones malas y perderemos ventaja frente a la competencia.

## Objetivo del reto

No se trata de ejecutar queries sobre un modelo ya limpio.
Se trata de construir ese modelo nosotras:

1. detectar problemas en los datos en bruto,
2. normalizar hasta 3FN,
3. responder preguntas de negocio con SQL.

## Nota importante (para no mezclar conceptos)

Trabajamos solo en entorno relacional (SQLite + DB Browser).
No hay que cargar ni transformar CSV en clase.
El punto de partida ya viene en la tabla `ventas_cafe_raw` dentro de `tostador-cafe-raw.db`.

## Material que tenemos

1. `TOSTADOR-CAFE-RAW-RETO.sql` (tabla desnormalizada + datos).
2. `tostador-cafe-raw.db` (la misma info, lista para abrir en DB Browser).
3. Esta guia de reto.

## Mini glosario (por si ayuda)

- `raw` = datos en bruto.
- `insight` = conclusión accionable para negocio.
- `ticket medio` = gasto medio por venta.
- `top 5` = los 5 primeros según un criterio.

## Parte A - Diagnóstico

Sobre `ventas_cafe_raw`, debemos detectar al menos:

1. 6 problemas de diseño o calidad de dato.
2. 1 anomalía de inserción.
3. 1 anomalía de actualización.
4. 1 anomalía de borrado.

## Parte B - Normalización

1. Propuesta de tablas finales (PK y FK claras).
2. Paso por 1FN, 2FN, 3FN con explicación corta.
3. Diagrama simple de relaciones (texto o dibujo rápido).

### Protocolo anti-pérdida de datos (obligatorio)

Antes de transformar, guardaremos estos 3 numeros del raw:

1. total de filas,
2. total de ventas únicas (`id_venta`),
3. facturación total (`SUM(total_venta)`).

Después de normalizar, comprobaremos si podemos reconstruir esos totales con `JOIN` entre nuestras tablas.
Si no coincide, hay datos perdidos o duplicados en la transformación.

Objetivo: normalizar SI, pero sin romper trazabilidad.

## Parte C - SQL de negocio

Con nuestro modelo final, resolveremos:

1. Los 5 cafés con mayor facturación.
2. Zonas con mayor volumen de ventas.
3. Top 3 cafés por valoración media (mínimo 3 valoraciones).
4. Ticket medio por canal (`tienda` vs `online`).
5. Consulta libre: recomendación de café para "snobs" (ventas + valoración).

