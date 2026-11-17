CREATE PROCEDURE sp_InsertarCliente
    @id_cliente INT,
    @dni VARCHAR(20),
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @telefono VARCHAR(20),
    @email VARCHAR(100),
    @direccion VARCHAR(100)
AS
BEGIN
    INSERT INTO Cliente (idCliente, dni, nombre, apellido, telefono, email, direccion)
    VALUES (@id_cliente, @dni, @nombre, @apellido, @telefono, @email, @direccion);
END;
GO

CREATE PROCEDURE sp_ActualizarPrecioProducto
    @id_producto INT,
    @nuevo_precio DECIMAL(10,2)
AS
BEGIN
    UPDATE Producto
    SET precioActual = @nuevo_precio
    WHERE codProducto = @id_producto;
END;
GO
    
-- 1. PRUEBA: INSERTAR CLIENTE

EXEC sp_InsertarCliente
    @id_cliente = 9,
    @dni = '12345678',
    @nombre = 'Ana',
    @apellido = 'Perez',
    @telefono = '3794000000',
    @email = 'ana@gmail.com',
    @direccion = 'Corrientes';

-- VERIFICACION DEL CLIENTE INSERTADO

SELECT *
FROM Cliente
WHERE idCliente = 9;

-- 2. PRUEBA: ACTUALIZAR PRECIO DEL PRODUCTO

EXEC sp_ActualizarPrecioProducto
    @id_producto = 1,
    @nuevo_precio = 25000;

-- VERIFICACION DEL PRECIO ACTUALIZADO

SELECT *
FROM Producto
WHERE codProducto = 1;
GO

-- ============================================================
-- LIMPIAR CAMBIOS
-- ============================================================
DELETE FROM Cliente WHERE idCliente = 99;
UPDATE Producto SET precioActual = 18000.00 WHERE codProducto = 1;
