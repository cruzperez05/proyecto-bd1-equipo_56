CREATE PROCEDURE sp_InsertarCliente
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @telefono VARCHAR(20),
    @email VARCHAR(100)
AS
BEGIN
    INSERT INTO Cliente (nombre, apellido, telefono, email)
    VALUES (@nombre, @apellido, @telefono, @email);
END;
GO

CREATE PROCEDURE sp_ActualizarPrecioProducto
    @id_producto INT,
    @nuevo_precio DECIMAL(10,2)
AS
BEGIN
    UPDATE Producto
    SET precio_actual = @nuevo_precio
    WHERE id_producto = @id_producto;
END;
GO
