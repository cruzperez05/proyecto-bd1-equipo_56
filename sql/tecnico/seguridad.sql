USE TiendaIndumentaria;
GO

-- CREACION DEL ROL
CREATE ROLE rol_consulta_productos;
GO

-- ASIGNACION DE PERMISOS AL ROL
GRANT SELECT ON Producto TO rol_consulta_productos;
GO

-- CREACION DE USUARIOS
CREATE USER usuario_consulta WITHOUT LOGIN;
CREATE USER usuario_sin_permiso WITHOUT LOGIN;
GO

-- ASIGNACION DEL USUARIO AL ROL
ALTER ROLE rol_consulta_productos
ADD MEMBER usuario_consulta;
GO

-- PRUEBA 1: USUARIO CON PERMISOS
EXECUTE AS USER = 'usuario_consulta';

SELECT *
FROM Producto;

REVERT;
GO

-- PRUEBA 2: USUARIO SIN PERMISOS
EXECUTE AS USER = 'usuario_sin_permiso';

BEGIN TRY
    SELECT *
    FROM Producto;
END TRY
BEGIN CATCH
    SELECT
        'Acceso denegado' AS Resultado,
        ERROR_MESSAGE() AS Mensaje;
END CATCH;

REVERT;
GO
