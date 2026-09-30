-- ================================================
-- Etapa 3: Script DDL
-- ================================================

-- 1. TABLA: Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    direccion VARCHAR(150)
);

-- 2. TABLA: Categoria
CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY,
    nombreCategoria VARCHAR(50) NOT NULL UNIQUE
);

-- 3. TABLA: Metodo_Pago
CREATE TABLE Metodo_Pago (
    idMetodoPago INT PRIMARY KEY,
    nombreMetodo VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(100)
);

-- 4. TABLA: Variante
CREATE TABLE Variante (
    idVariante INT PRIMARY KEY,
    talle VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    stock INT NOT NULL,
    codProducto INT NOT NULL,

    CONSTRAINT FK_Variante_Producto
        FOREIGN KEY (codProducto)
        REFERENCES Producto(codProducto),

    CONSTRAINT CK_Variante_Stock
        CHECK (stock >= 0),

    CONSTRAINT UQ_Variante_Producto_Talle_Color
        UNIQUE (codProducto, talle, color)
);
-- 5. TABLA: Productos
CREATE TABLE Producto (
    codProducto INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precioActual DECIMAL(10,2) NOT NULL,
    idCategoria INT,

    CONSTRAINT FK_Producto_Categoria
        FOREIGN KEY (idCategoria)
        REFERENCES Categoria(idCategoria),

    CONSTRAINT CK_Producto_Precio
        CHECK (precioActual >= 0)
);

-- 6. TABLA: Venta
CREATE TABLE Venta (
    idVenta INT PRIMARY KEY,
    fecha DATE NOT NULL,
    idCliente INT NOT NULL,
    idMetodoPago INT NOT NULL,

    CONSTRAINT FK_Venta_Cliente
        FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente),

    CONSTRAINT FK_Venta_MetodoPago
        FOREIGN KEY (idMetodoPago)
        REFERENCES Metodo_Pago(idMetodoPago)
);

-- 7. TABLA: Detalle_Venta
CREATE TABLE Detalle_Venta (
    idDetalle INT PRIMARY KEY,
    cantidad INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    idVenta INT NOT NULL,
    idVariante INT NOT NULL,

    CONSTRAINT FK_Detalle_Venta
        FOREIGN KEY (idVenta)
        REFERENCES Venta(idVenta),

    CONSTRAINT FK_Detalle_Variante
        FOREIGN KEY (idVariante)
        REFERENCES Variante(idVariante),

    CONSTRAINT CK_Detalle_Cantidad
        CHECK (cantidad > 0),

    CONSTRAINT CK_Detalle_Precio
        CHECK (precioUnitario > 0)
);
