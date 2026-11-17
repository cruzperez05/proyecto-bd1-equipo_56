USE TiendaIndumentaria;
GO

-- 1. INDICE PARA BUSCAR VENTAS POR FECHA
-- Optimiza los filtros por rango de fechas y ordenamientos temporales
-- en consultas y reportes sobre la tabla Venta.
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IX_Venta_Fecha'
      AND object_id = OBJECT_ID('dbo.Venta')
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_Venta_Fecha
    ON dbo.Venta (fecha);
END;
GO

-- 2. INDICE PARA BUSCAR DETALLES POR VENTA
-- Optimiza las uniones (JOIN) entre Venta y Detalle_Venta
-- al consultar los renglones o calcular el total de una venta.
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IX_Detalle_Venta_idVenta'
      AND object_id = OBJECT_ID('dbo.Detalle_Venta')
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_Detalle_Venta_idVenta
    ON dbo.Detalle_Venta (idVenta);
END;
GO


-- 3. INDICE PARA BUSCAR DETALLES POR VARIANTE
-- Optimiza las uniones entre Detalle_Venta y Variante
-- utilizadas en las consultas de productos vendidos.

IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE name = 'IX_Detalle_Venta_idVariante'
      AND object_id = OBJECT_ID('dbo.Detalle_Venta')
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_Detalle_Venta_idVariante
    ON dbo.Detalle_Venta (idVariante);
END;
GO


-- Verificación rápida de creación
SELECT
    t.name AS Tabla,
    i.name AS Indice,
    i.type_desc AS TipoIndice
FROM sys.indexes AS i
INNER JOIN sys.tables AS t
    ON i.object_id = t.object_id
WHERE i.name IN (
    'IX_Venta_Fecha',
    'IX_Detalle_Venta_idVenta',
    'IX_Detalle_Venta_idVariante'
)
ORDER BY t.name, i.name;
GO
