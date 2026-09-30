-- =====================================================================
-- Etapa 3: Script DML (8 a 10 registros por tabla)
-- =====================================================================



-- ---------------------------------------------------------------------
-- INSERTs de Cliente
-- ---------------------------------------------------------------------


-- ---------------------------------------------------------------------
-- INSERTs de Categoria
-- ---------------------------------------------------------------------


-- ---------------------------------------------------------------------
-- INSERTs de Metodo_Pago
-- ---------------------------------------------------------------------


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
