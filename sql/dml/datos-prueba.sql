-- =====================================================================
-- Etapa 3: Script DML (8 a 10 registros por tabla)
-- =====================================================================

-- ---------------------------------------------------------------------
-- INSERTs de Cliente
-- ---------------------------------------------------------------------
INSERT INTO Cliente (idCliente, dni, nombre, apellido, telefono, email, direccion) VALUES 
(1, '38123456', 'Juan', 'Pérez', '3794112233', 'juan.perez@email.com', 'Corrientes'),
(2, '39876543', 'María', 'Gómez', '3794223344', 'maria.gomez@email.com', 'Corrientes'),
(3, '35111222', 'Carlos', 'López', '3794334455', 'carlos.lopez@email.com', 'Resistencia'),
(4, '41222333', 'Ana', 'Martínez', '3794445566', 'ana.martinez@email.com', 'Corrientes'),
(5, '37444555', 'Lucas', 'Rodríguez', '3794556677', 'lucas.rodriguez@email.com', 'Resistencia'),
(6, '40555666', 'Sofía', 'Fernández', '3794667788', 'sofia.fernandez@email.com', 'Corrientes'),
(7, '36777888', 'Mateo', 'García', '3794778899', 'mateo.garcia@email.com', 'Corrientes'),
(8, '42888999', 'Lucía', 'Díaz', '3794889900', 'lucia.diaz@email.com', 'Resistencia');

-- ---------------------------------------------------------------------
-- INSERTs de Categoria
-- ---------------------------------------------------------------------
INSERT INTO Categoria (idCategoria, nombreCategoria) VALUES 
(1, 'Remeras'),
(2, 'Pantalones'),
(3, 'Camisas'),
(4, 'Buzos'),
(5, 'Camperas'),
(6, 'Shorts'),
(7, 'Vestidos'),
(8, 'Calzado');

-- ---------------------------------------------------------------------
-- INSERTs de Metodo_Pago
-- ---------------------------------------------------------------------
INSERT INTO Metodo_Pago (idMetodoPago, nombreMetodo) VALUES 
(1, 'Efectivo'),
(2, 'Tarjeta de Crédito'),
(3, 'Tarjeta de Débito'),
(4, 'Mercado Pago'),
(5, 'Transferencia Bancaria'),
(6, 'Tarjeta Prepaga'),
(7, 'Billetera Virtual'),
(8, 'Pago Fácil / RapiPago');

-- ---------------------------------------------------------------------
-- INSERTs de Productos
-- ---------------------------------------------------------------------
INSERT INTO Producto (codProducto, nombre, descripcion, precioActual, idCategoria) VALUES 
(1, 'Remera Básica', 'Remera de algodón de manga corta', 18000.00, 1),
(2, 'Remera Oversize', 'Remera oversize de algodón', 22000.00, 1),
(3, 'Camisa Casual', 'Camisa casual de manga larga', 32000.00, 3),
(4, 'Pantalón Chino', 'Pantalón chino de corte clásico', 45000.00, 2),
(5, 'Buzo con Capucha', 'Buzo de algodón con capucha y bolsillo frontal', 38000.00, 4),
(6, 'Campera Deportiva', 'Campera deportiva liviana con cierre frontal', 52000.00, 5),
(7, 'Short Deportivo', 'Short deportivo de secado rápido', 25000.00, 6),
(8, 'Vestido Casual', 'Vestido casual de tela liviana', 42000.00, 7),
(9, 'Camisa Polo', 'Camisa polo de algodón', 28000.00, 3),
(10, 'Zapatillas Urbanas', 'Zapatillas urbanas para uso diario', 65000.00, 8);

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
-- INSERTs de Venta
-- ---------------------------------------------------------------------
INSERT INTO Venta (idVenta, fecha, idCliente, idMetodoPago) VALUES
(1, '2026-09-01', 1, 7),
(2, '2026-09-02', 2, 2),
(3, '2026-09-03', 3, 3),
(4, '2026-09-04', 4, 1),
(5, '2026-09-05', 5, 8),
(6, '2026-09-06', 6, 4),
(7, '2026-09-07', 7, 5),
(8, '2026-09-08', 8, 6);

-- ---------------------------------------------------------------------
-- INSERTs de Detalle_Venta
-- ---------------------------------------------------------------------
INSERT INTO Detalle_Venta (idDetalle, cantidad, precioUnitario, idVenta, idVariante) VALUES
(1, 1, 18000.00, 1, 1),
(2, 2, 22000.00, 1, 2),
(3, 1, 32000.00, 2, 6),
(4, 1, 45000.00, 3, 8),
(5, 2, 38000.00, 4, 10),
(6, 1, 18000.00, 5, 3),
(7, 1, 22000.00, 6, 4),
(8, 2, 32000.00, 7, 7),
(9, 1, 45000.00, 8, 9),
(10, 1, 38000.00, 8, 10);
