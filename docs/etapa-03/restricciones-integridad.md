# Restricciones de Integridad 

## 1. CLIENTE
idCliente se definió como clave primaria para identificar cada cliente de forma única. Los atributos nombre, apellido, DNI, telefono y email se definieron como obligatorios mediante NOT NULL. Además, se estableció una restricción UNIQUE sobre DNI y email para evitar duplicados en el registro de los clientes.

## 2. METODO_PAGO


## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE
idVariante se definió como clave primaria para identificar cada variante de forma única. El atributo codProducto se definió como clave foránea, garantizando que cada variante esté asociada a un producto existente. Además, talle, color, stock y codProducto se definieron como obligatorios mediante NOT NULL. Se estableció una restricción CHECK sobre stock para garantizar que no se ingresen valores negativos y una restricción UNIQUE sobre la combinación de codProducto, talle y color para evitar variantes duplicadas para un mismo producto.


## 6. VENTA
idVenta se definió como clave primaria para identificar cada venta de forma única. Los atributos idCliente e idMetodoPago se definieron como claves foráneas, garantizando que cada venta esté asociada a un cliente y a un método de pago existentes. Además, fecha, idCliente e idMetodoPago se definieron como obligatorios mediante NOT NULL.

## 7. DETALLE_VENTA
idDetalle se definió como clave primaria para identificar cada detalle de venta de forma única. Los atributos idVenta e idVariante se definieron como claves foráneas, garantizando que cada detalle esté asociado a una venta y a una variante de producto existentes. Además, cantidad, precioUnitario, idVenta e idVariante se definieron como obligatorios mediante NOT NULL. Se establecieron restricciones CHECK sobre cantidad y precioUnitario para garantizar que ambos valores sean mayores que cero.
