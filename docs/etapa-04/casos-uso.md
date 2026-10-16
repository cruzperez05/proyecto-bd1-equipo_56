# Casos de Uso - Etapa IV

## CU01 - Consultar comprobante de venta

**Actor:** Empleado del local.

**Objetivo:** Obtener la información completa de una venta realizada, incluyendo los productos vendidos y el importe total.

**Descripción:** El empleado consulta una venta mediante su identificador. El sistema obtiene los datos generales de la operación, como la fecha, el cliente y el método de pago utilizado. También muestra los productos vendidos, sus variantes, cantidades y precios unitarios, calculando los subtotales y el total de la venta.

**Flujo principal:**

1. El empleado indica el identificador de la venta que desea consultar.
2. El sistema busca la venta registrada en la base de datos.
3. Se obtienen los datos del cliente, el método de pago y los productos incluidos en la operación.
4. Se calcula el subtotal de cada producto multiplicando la cantidad por el precio unitario registrado al momento de la venta.
5. Se calcula el importe total sumando los subtotales.
6. Se muestra la información completa del comprobante.

**Resultado esperado:** Se obtiene un comprobante con los datos generales de la venta, el detalle de los productos vendidos, sus subtotales y el importe total.


## CU02 - Generar reporte de ventas por categoría

**Actor:** Encargado del local.

**Objetivo:** Obtener un resumen de las ventas realizadas por categoría de producto durante un período determinado.

**Descripción:** El encargado establece un rango de fechas para consultar las ventas. El sistema obtiene las operaciones registradas durante ese período y agrupa la información según las categorías de los productos vendidos, calculando las cantidades y los importes acumulados.

**Flujo principal:**

1. El encargado indica la fecha inicial y final del período que desea consultar.
2. El sistema busca las ventas registradas dentro del rango de fechas establecido.
3. Se relacionan las ventas con sus detalles, variantes, productos y categorías.
4. Se agrupan los registros según la categoría de cada producto.
5. Se calculan las cantidades vendidas y los importes acumulados por categoría.
6. Se muestra el reporte con los resultados obtenidos.

**Resultado esperado:** Se obtiene un reporte que permite conocer y comparar las ventas de las distintas categorías de productos durante el período seleccionado.


## CU03 - Consultar productos con bajo stock

**Actor:** Encargado del local.

**Objetivo:** Identificar las variantes de productos que tienen pocas unidades disponibles para facilitar el control del inventario y detectar necesidades de reposición.

**Descripción:** El encargado consulta el inventario para identificar las variantes de productos cuyo stock es inferior a cinco unidades. El sistema obtiene la información de los productos y sus categorías, mostrando el nombre del producto, el talle, el color y la cantidad disponible.

**Flujo principal:**

1. El encargado solicita consultar los productos con bajo stock.
2. El sistema busca las variantes registradas en la base de datos.
3. Se relacionan las variantes con sus productos y categorías.
4. Se filtran las variantes que tienen menos de cinco unidades disponibles.
5. Se ordenan los resultados desde el menor stock hasta el mayor.
6. Se muestra el listado de productos que requieren atención para su posible reposición.

**Resultado esperado:** Se obtiene un listado de las variantes con bajo stock, indicando el producto, su categoría, talle, color y cantidad disponible.

