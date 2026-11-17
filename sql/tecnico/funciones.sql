CREATE FUNCTION fn_CalcularTotalVenta 
(
    @id_venta INT
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @total_calculado DECIMAL(10,2);

    SELECT @total_calculado = SUM(cantidad * precioUnitario)
    FROM Detalle_Venta
    WHERE idVenta = @id_venta;

    RETURN ISNULL(@total_calculado, 0.00);
END;
GO

-- ============================================================
-- PRUEBA 1: Uso de la función integrada dentro de un SELECT
-- ============================================================
SELECT
    v.idVenta,
    v.fecha,
    c.nombre + ' ' + c.apellido AS Cliente,
    dbo.fn_CalcularTotalVenta(v.idVenta) AS TotalVenta
FROM Venta AS v
INNER JOIN Cliente AS c
    ON v.idCliente = c.idCliente
ORDER BY v.idVenta;


-- ============================================================
-- PRUEBA 2: Verificación manual contra los renglones reales (Detalle_Venta)
-- ============================================================
-- Comprobamos en una venta puntual (ej. idVenta = 1) que la función devuelve
-- exactamente la suma de (cantidad * precioUnitario) de sus renglones:
SELECT
    idDetalle,
    idVenta,
    cantidad,
    precioUnitario,
    (cantidad * precioUnitario) AS SubtotalRenglon
FROM Detalle_Venta
WHERE idVenta = 1;

SELECT dbo.fn_CalcularTotalVenta(1) AS TotalCalculadoPorFuncion;
