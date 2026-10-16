SELECT
    p.codProducto,
    p.nombre AS producto,
    c.nombreCategoria AS categoria,
    COUNT(DISTINCT v.idVenta) AS cantidad_ventas,
    SUM(dv.cantidad) AS unidades_vendidas,
    SUM(dv.cantidad * dv.precioUnitario) AS ingresos_generados
FROM Producto AS p
INNER JOIN Variante AS va
    ON va.codProducto = p.codProducto
INNER JOIN Detalle_Venta AS dv
    ON dv.idVariante = va.idVariante
INNER JOIN Venta AS v
    ON v.idVenta = dv.idVenta
LEFT JOIN Categoria AS c
    ON c.idCategoria = p.idCategoria
GROUP BY
    p.codProducto,
    p.nombre,
    c.nombreCategoria
HAVING
    SUM(dv.cantidad) >= 5
    AND COUNT(DISTINCT v.idVenta) >= 2
    AND SUM(dv.cantidad * dv.precioUnitario) > 100000
ORDER BY
    ingresos_generados DESC,
    unidades_vendidas DESC;
