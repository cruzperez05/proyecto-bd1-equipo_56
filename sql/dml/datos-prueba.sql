-- =====================================================================
-- Etapa 3: Script DML (8 a 10 registros por tabla)
-- =====================================================================



-- ---------------------------------------------------------------------
-- INSERTs de Cliente
-- ---------------------------------------------------------------------
INSERT INTO Cliente (idCliente, nombre, apellido, DNI, telefono, email) VALUES 
(1, 'Juan', 'Pérez', '38123456', '3794112233', 'juan.perez@email.com'),
(2, 'María', 'Gómez', '39876543', '3794223344', 'maria.gomez@email.com'),
(3, 'Carlos', 'López', '35111222', '3794334455', 'carlos.lopez@email.com'),
(4, 'Ana', 'Martínez', '41222333', '3794445566', 'ana.martinez@email.com'),
(5, 'Lucas', 'Rodríguez', '37444555', '3794556677', 'lucas.rodriguez@email.com'),
(6, 'Sofía', 'Fernández', '40555666', '3794667788', 'sofia.fernandez@email.com'),
(7, 'Mateo', 'García', '36777888', '3794778899', 'mateo.garcia@email.com'),
(8, 'Lucía', 'Díaz', '42888999', '3794889900', 'lucia.diaz@email.com');

-- ---------------------------------------------------------------------
-- INSERTs de Categoria
-- ---------------------------------------------------------------------


-- ---------------------------------------------------------------------
-- INSERTs de Metodo_Pago
-- ---------------------------------------------------------------------
INSERT INTO Metodo_Pago (idMetodoPago, nombre) VALUES 
(1, 'Efectivo'),
(2, 'Tarjeta de Crédito'),
(3, 'Tarjeta de Débito'),
(4, 'Mercado Pago'),
(5, 'Transferencia Bancaria'),
(6, 'Tarjeta Prepaga'),
(7, 'Billetera Virtual'),
(8, 'Pago Fácil / RapiPago');

-- ---------------------------------------------------------------------
-- INSERTs de Variante
-- ---------------------------------------------------------------------

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (1, 'S', 'Negro', 10, 1);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (2, 'M', 'Negro', 8, 1);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (3, 'L', 'Negro', 6, 1);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (4, 'M', 'Blanco', 12, 2);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (5, 'L', 'Blanco', 9, 2);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (6, 'S', 'Azul', 7, 3);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (7, 'M', 'Azul', 11, 3);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (8, 'L', 'Rojo', 5, 4);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (9, 'M', 'Rojo', 8, 4);

INSERT INTO Variante (idVariante, talle, color, stock, codProducto)
VALUES (10, 'XL', 'Verde', 4, 5);

-- ---------------------------------------------------------------------
-- INSERTs de Productos
-- ---------------------------------------------------------------------


-- ---------------------------------------------------------------------
-- INSERTs de Venta
-- ---------------------------------------------------------------------
INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (1, '2026-09-01', 1, 7);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (2, '2026-09-02', 2, 2);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (3, '2026-09-03', 3, 3);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (4, '2026-09-04', 4, 1);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (5, '2026-09-05', 5, 8);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (6, '2026-09-06', 6, 4);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (7, '2026-09-07', 7, 5);

INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago)
VALUES (8, '2026-09-08', 8, 6);

-- ---------------------------------------------------------------------
-- INSERTs de Detalle_Venta
-- ---------------------------------------------------------------------
