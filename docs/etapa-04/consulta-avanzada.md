#### Uso de JOIN
 El INNER JOIN de Variante incorpora las variantes asociadas a cada producto.
 
 El INNER JOIN de Detalle_Venta relaciona las variantes con las líneas de venta en las que se vendieron.

 El INNER JOIN de Venta relaciona cada detalle con su venta.
 
 El LEFT JOIN de Categoria incorpora la categoría sin excluir productos que no tengan una categoría asignada.
 
Los INNER JOIN hacen que solo se consideren productos con registros relacionados en ventas. El LEFT JOIN conserva los productos cuya categoria sea NULL.

#### Agrupación y funciones de agregación
GROUP BY agrupa los registros por producto y categoría para calcular métricas por producto:
- COUNT(DISTINCT v.idVenta): cuenta las ventas diferentes que incluyeron el producto.
- SUM(dv.cantidad): suma las unidades vendidas a través de todas las variantes.
- SUM(dv.cantidad * dv.precioUnitario): calcula los ingresos registrados por el producto.
Se utiliza precioUnitario de Detalle_Venta en lugar de precioActual de Producto, porque el precio actual puede cambiar y no necesariamente representa el precio aplicado en ventas anteriores.

#### Uso de HAVING
HAVING filtra los grupos después de calcular las agregaciones. En esta consulta, el producto debe cumplir las tres condiciones se vendieron 5 o mas unidades, aparecen en 2 o mas ventas y generaron ingresos superiores a $100.000.

La clausula HAVING permite filtrar segun resultados agregados como SUM y COUNT.
