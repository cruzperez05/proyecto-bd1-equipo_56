USE TiendaIndumentaria;
GO

------------------------------------------------------------
-- 1. CREACIÓN DE LA TABLA DE AUDITORÍA
------------------------------------------------------------

CREATE TABLE Auditoria_Producto (
    idAuditoria INT IDENTITY(1,1) PRIMARY KEY,
    codProducto INT NOT NULL,
    operacion VARCHAR(10) NOT NULL,
    fechaHora DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    usuario VARCHAR(100) NOT NULL,
    nombreAnterior VARCHAR(100),
    nombreNuevo VARCHAR(100),
    precioAnterior DECIMAL(10,2),
    precioNuevo DECIMAL(10,2)
);
GO


------------------------------------------------------------
-- 2. CREACIÓN DEL TRIGGER DE AUDITORÍA
------------------------------------------------------------

CREATE TRIGGER TR_Auditoria_Producto
ON Producto
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Auditoria_Producto (
        codProducto,
        operacion,
        usuario,
        nombreAnterior,
        nombreNuevo,
        precioAnterior,
        precioNuevo
    )
    SELECT
        COALESCE(i.codProducto, d.codProducto),

        CASE
            WHEN d.codProducto IS NULL THEN 'INSERT'
            WHEN i.codProducto IS NULL THEN 'DELETE'
            ELSE 'UPDATE'
        END,

        SUSER_SNAME(),

        d.nombre,
        i.nombre,
        d.precioActual,
        i.precioActual

    FROM inserted AS i
    FULL OUTER JOIN deleted AS d
        ON i.codProducto = d.codProducto;
END;
GO


------------------------------------------------------------
-- 3. PRUEBA 1: INSERCIÓN DE UN PRODUCTO
------------------------------------------------------------

INSERT INTO Producto (
    codProducto,
    nombre,
    descripcion,
    precioActual,
    idCategoria
)
VALUES (
    100,
    'Remera de prueba',
    'Producto para probar auditoría',
    15000,
    1
);
GO


------------------------------------------------------------
-- 4. PRUEBA 2: MODIFICACIÓN DEL PRODUCTO
------------------------------------------------------------

UPDATE Producto
SET precioActual = 20000
WHERE codProducto = 100;
GO


------------------------------------------------------------
-- 5. PRUEBA 3: ELIMINACIÓN DEL PRODUCTO
------------------------------------------------------------

DELETE FROM Producto
WHERE codProducto = 100;
GO


------------------------------------------------------------
-- 6. CONSULTA DEL HISTORIAL DE AUDITORÍA
------------------------------------------------------------

SELECT
    idAuditoria,
    codProducto,
    operacion,
    fechaHora,
    usuario,
    nombreAnterior,
    nombreNuevo,
    precioAnterior,
    precioNuevo
FROM Auditoria_Producto
ORDER BY idAuditoria;
GO
