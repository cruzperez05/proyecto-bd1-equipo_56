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

-- ============================================================
-- LIMPIAR CAMBIOS
-- ============================================================
-- 1. Asegurar que la sesión esté en el usuario principal (por si quedó con EXECUTE AS USER)
REVERT;
GO

-- 2. Eliminar los usuarios de prueba si existen
IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'usuario_consulta')
    DROP USER usuario_consulta;

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'usuario_sin_permiso')
    DROP USER usuario_sin_permiso;
GO

-- 3. Eliminar el rol personalizado si existe
IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'rol_consulta_productos')
    DROP ROLE rol_consulta_productos;
GO
