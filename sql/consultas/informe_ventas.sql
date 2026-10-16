SELECT
    C.idCategoria,
    C.nombreCategoria,
    COUNT(DISTINCT V.idVenta) AS cantidadVentas,
    SUM(DV.cantidad) AS unidadesVendidas,
    SUM(DV.cantidad * DV.precioUnitario) AS totalVendido
FROM Venta V
INNER JOIN Detalle_Venta DV
    ON DV.idVenta = V.idVenta
INNER JOIN Variante VA
    ON VA.idVariante = DV.idVariante
INNER JOIN Producto P
    ON P.codProducto = VA.codProducto
INNER JOIN Categoria C
    ON C.idCategoria = P.idCategoria
WHERE V.fecha >= '2026-09-01'
  AND V.fecha <= '2026-09-08'
GROUP BY
    C.idCategoria,
    C.nombreCategoria
ORDER BY totalVendido DESC;
