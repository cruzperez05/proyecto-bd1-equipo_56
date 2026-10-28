CREATE FUNCTION fn_CalcularTotalVenta 
(
    @id_venta INT
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @total_calculado DECIMAL(10,2);

    SELECT @total_calculado = SUM(subtotal)
    FROM Detalle_Venta
    WHERE id_venta = @id_venta;

    RETURN ISNULL(@total_calculado, 0.00);
END;
GO

-- Ejemplo de uso de la función en una consulta SELECT:
-- SELECT id_venta, fecha, dbo.fn_CalcularTotalVenta(id_venta) AS TotalGeneral FROM Venta;
