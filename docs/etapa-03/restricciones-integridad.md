# Restricciones de Integridad 

## 1. CLIENTE

## 2. METODO_PAGO


## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE
idVariante se definió como clave primaria para identificar cada variante de forma única. El atributo codProducto se definió como clave foránea, garantizando que cada variante esté asociada a un producto existente. Además, talle, color, stock y codProducto se definieron como obligatorios mediante NOT NULL. Se estableció una restricción CHECK sobre stock para garantizar que no se ingresen valores negativos y una restricción UNIQUE sobre la combinación de codProducto, talle y color para evitar variantes duplicadas para un mismo producto.


## 6. VENTA
idVenta se definió como clave primaria para identificar cada venta de forma única. Los atributos idCliente e idMetodoPago se definieron como claves foráneas, garantizando que cada venta esté asociada a un cliente y a un método de pago existentes. Además, fecha, idCliente e idMetodoPago se definieron como obligatorios mediante NOT NULL.

## 7. DETALLE_VENTA

