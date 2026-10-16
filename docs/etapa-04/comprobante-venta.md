## 1. Objetivo de la consulta
Esta consulta tiene como objetivo asegurar la informacion de una venta realizada en el sistema de indumentaria, uniendo el encabezado de la operacion con los datos del cliente, el metodo de pago utilizado y los detalles especificos de los productos (incluyendo talle, color y precio unitario al momento de la compra).

## 2. Estrategia SQL y Relaciones utilizadas
Para lograr esta estructura, se realizaron operaciones de union (`JOIN` y `LEFT JOIN`) entre las siguientes tablas del modelo relacional:
- `VENTA`: Contiene el encabezado principal de la operacion y la fecha.
- `CLIENTE`: Aporta los datos personales del comprador (nombre, apellido y DNI).
- `METODO_PAGO`: Indica la forma en que se abono la venta.
- `DETALLE_VENTA`: Registra las cantidades y el precio unitario historico de cada renglon.
- `VARIANTE` y `PRODUCTO`: Permiten identificar el nombre de la prenda, su talle y su color.

tambien se incluye un calculo aritmetico directo para obtener el subtotal por cada renglon multiplicando la cantidad vendida por el precio unitario.

## 3. Resultado esperado
El resultado muestra una vista detallada de la factura, desglosando cada prenda comprada dentro de una misma venta junto con los datos del cliente y el total correspondiente.
