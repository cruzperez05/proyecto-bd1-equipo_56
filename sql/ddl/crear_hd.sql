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
    
);

-- 3. TABLA: Metodo_Pago
CREATE TABLE Metodo_Pago (
    idMetodoPago INT PRIMARY KEY,
    nombreMetodo VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(100)
);

-- 4. TABLA: Prendas
CREATE TABLE Variante (
    
);

-- 5. TABLA: Productos
CREATE TABLE Producto (
    
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
    
);
