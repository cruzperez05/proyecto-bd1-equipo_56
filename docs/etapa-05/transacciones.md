# Manejo de Transacciones - Etapa V

## 1. Definición y objetivo

Una transacción es un conjunto de operaciones SQL que se ejecutan como una sola unidad. Si todas las operaciones se realizan correctamente, los cambios se confirman mediante COMMIT. Si ocurre un error, se deshacen mediante ROLLBACK.

Su objetivo es garantizar la integridad y consistencia de los datos, cumpliendo las propiedades ACID.

## 2. Ventajas y aplicaciones

Las transacciones evitan que queden operaciones incompletas en la base de datos.

En nuestro sistema de indumentaria, permiten registrar una venta, guardar su detalle y actualizar el stock de manera conjunta, evitando inconsistencias si alguna operación falla.

## 3. Implementación en SQL Server

Se utilizaron las siguientes instrucciones:

- `BEGIN TRANSACTION`: inicia la transacción.
- `COMMIT`: confirma los cambios realizados.
- `ROLLBACK`: deshace los cambios ante un error.
- `TRY...CATCH`: permite controlar los errores durante la ejecución.

La implementación se encuentra en el archivo `scripts.sql`.

## 4. Caso aplicado al sistema

Se simuló la venta de una Remera Básica negra, talle S, correspondiente a la variante 1.

Inicialmente, el producto contaba con 10 unidades disponibles. Se realizaron dos pruebas:

- **COMMIT:** venta de 2 unidades con stock suficiente.
- **ROLLBACK:** intento de venta de 20 unidades con stock insuficiente.

## 5. Demostración y resultados

### Prueba exitosa - COMMIT

Se registró la venta 9 y su detalle, descontando 2 unidades del stock.

**Resultado:** el stock pasó de 10 a 8 unidades.

### Prueba fallida - ROLLBACK

Se intentó registrar la venta 10 por 20 unidades, pero el stock disponible era insuficiente.

**Resultado:** se deshicieron los cambios, la venta y su detalle no quedaron registrados, y el stock permaneció en 8 unidades.
