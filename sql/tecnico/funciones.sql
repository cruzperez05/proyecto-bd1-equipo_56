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

-- Ejemplo de uso de la función en una consulta SELECT:
-- SELECT idVenta, fecha, dbo.fn_CalcularTotalVenta(idVenta) AS TotalGeneral FROM Venta;
