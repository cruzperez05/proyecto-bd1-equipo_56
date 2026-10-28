USE TiendaIndumentaria;
GO

-- PRUEBA 1: COMMIT (venta con stock suficiente)

IF NOT EXISTS (SELECT 1 FROM Venta WHERE idVenta = 9)
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Venta VALUES (9, '2026-10-28', 1, 1);

        INSERT INTO Detalle_Venta
        VALUES (11, 2, 18000, 9, 1);

        UPDATE Variante
        SET stock = stock - 2
        WHERE idVariante = 1 AND stock >= 2;

        IF @@ROWCOUNT = 0
            THROW 50001, 'Stock insuficiente', 1;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- PRUEBA 2: ROLLBACK (venta con stock insuficiente)

BEGIN TRY
    BEGIN TRANSACTION;

    INSERT INTO Venta VALUES (10, '2026-10-28', 1, 1);

    INSERT INTO Detalle_Venta
    VALUES (12, 20, 18000, 10, 1);

    UPDATE Variante
    SET stock = stock - 20
    WHERE idVariante = 1 AND stock >= 20;

    IF @@ROWCOUNT = 0
        THROW 50001, 'Stock insuficiente', 1;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    IF ERROR_NUMBER() <> 50001
        THROW;
END CATCH;
GO

-- VERIFICACION DE RESULTADOS

SELECT * FROM Venta WHERE idVenta IN (9, 10);

SELECT * FROM Detalle_Venta WHERE idDetalle IN (11, 12);

SELECT idVariante, stock
FROM Variante
WHERE idVariante = 1;
