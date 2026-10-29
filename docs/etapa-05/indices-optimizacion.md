# Índices y Optimización - Etapa V

## 1. Definición y objetivo

Un índice es una estructura que permite acceder a los registros de una tabla de manera más eficiente, evitando que el motor de base de datos tenga que recorrer todos los registros en determinadas consultas.

Su objetivo es mejorar el rendimiento de las consultas SQL, reduciendo los tiempos de búsqueda y recuperación de información.

## 2. Ventajas y aplicaciones

Los índices permiten acelerar las búsquedas, los filtros y algunas operaciones de unión entre tablas. Sin embargo, ocupan espacio adicional y pueden aumentar el costo de las operaciones de inserción, modificación y eliminación de datos.

En nuestro sistema de indumentaria, se propone utilizar un índice sobre la fecha de las ventas para optimizar los reportes que consultan las operaciones realizadas durante un período determinado.

## 3. Implementación en SQL Server

Se propone crear el siguiente índice sobre la tabla `Venta`:

```sql
CREATE NONCLUSTERED INDEX IX_Venta_Fecha
ON Venta (fecha);
```

Este índice permite mejorar las consultas que utilizan la columna `fecha` como criterio de búsqueda o filtro.

La implementación se encuentra en el archivo `scripts.sql`, dentro de la sección correspondiente a índices y optimización.

## 4. Caso aplicado al sistema

Se tomó como referencia el reporte de ventas por categoría desarrollado en la Etapa IV. Esta consulta relaciona las tablas `Venta`, `Detalle_Venta`, `Variante`, `Producto` y `Categoria`, y utiliza un rango de fechas para seleccionar las ventas que deben incluirse en el reporte.

El índice `IX_Venta_Fecha` busca optimizar el filtrado inicial de las ventas, especialmente cuando la tabla contiene una cantidad considerable de registros.

## 5. Demostración y resultados

Para comprobar el funcionamiento del índice, se puede analizar el plan de ejecución de la consulta del reporte de ventas por categoría antes y después de crearlo, utilizando SQL Server Management Studio.

También se puede consultar el plan de ejecución real para observar si SQL Server utiliza el índice durante la búsqueda de las ventas.

**Resultado esperado:** si la tabla contiene suficientes registros y el índice resulta conveniente para el optimizador, el filtrado por fecha puede realizarse de manera más eficiente.

La mejora efectiva debe comprobarse mediante pruebas sobre la base de datos del proyecto, ya que depende de la cantidad de registros y del plan de ejecución seleccionado por SQL Server.
