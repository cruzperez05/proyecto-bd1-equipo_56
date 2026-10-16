Los INNER JOIN relacionan las ventas con sus detalles, variantes, productos y categorías.
El filtro WHERE limita los resultados al período comprendido entre el 1 y el 8 de septiembre de 2026, inclusive.
COUNT(DISTINCT V.idVenta) cuenta cada venta una sola vez dentro de cada categoría, aunque esa venta contenga varios renglones de la misma categoría.
SUM(DV.cantidad) calcula la cantidad total de unidades vendidas por categoría.
SUM(DV.cantidad * DV.precioUnitario) calcula el importe vendido por categoría. Se utiliza precioUnitario de Detalle_Venta porque conserva el precio aplicado al momento de la venta.
GROUP BY agrupa los resultados por categoría.
ORDER BY totalVendido DESC ordena las categorías desde el mayor importe vendido hasta el menor.
