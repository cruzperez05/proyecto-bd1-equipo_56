-- ================================================
-- Etapa 3: Script DDL
-- ================================================

-- 1. TABLA: Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    
);

-- 2. TABLA: Categoria
CREATE TABLE Categoria (
    
);

-- 3. TABLA: Metodo_Pago
CREATE TABLE Metodo_Pago (
    idMetodoPago INT PRIMARY KEY,
);

-- 4. TABLA: Prendas
CREATE TABLE Variante (
    
);

-- 5. TABLA: Productos
CREATE TABLE Productos (
    
);

-- 6. TABLA: Venta
CREATE TABLE Venta (
    
);

-- 7. TABLA: Detalle_Venta
CREATE TABLE Detalle_Venta (
    
);
