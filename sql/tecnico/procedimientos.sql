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
    INSERT INTO Cliente (dni, nombre, apellido, telefono, email, direccion)
    VALUES (@dni, @nombre, @apellido, @telefono, @email, @direccion);
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
