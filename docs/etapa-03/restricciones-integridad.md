# Restricciones de Integridad 

## 1. CLIENTE
idCliente se definió como clave primaria para identificar cada cliente de forma única. Los atributos nombre, apellido, DNI, telefono y email se definieron como obligatorios mediante NOT NULL. Además, se estableció una restricción UNIQUE sobre DNI y email para evitar duplicados en el registro de los clientes.

## 2. METODO_PAGO
idMetodoPago se definió como clave primaria para identificar cada método de pago de forma única. El atributo nombre se definió como obligatorio mediante NOT NULL para asegurar que toda modalidad de pago cuente con su respectiva descripción.

## 3. CATEGORIA
idCategoria se definió como clave primaria para identificar cada categoría de forma única. El atributo nombreCategoria se definió como obligatorio mediante NOT NULL para asegurar que toda categoría tenga un nombre. Además, se estableció una restricción UNIQUE sobre nombreCategoria para evitar el registro de categorías duplicadas.

## 4. PRODUCTO
codProducto se definió como clave primaria para identificar cada producto de forma única. El atributo idCategoria se definió como clave foránea, garantizando que, cuando se indique una categoría, esta exista previamente en la tabla Categoria. Los atributos nombre y precioActual se definieron como obligatorios mediante NOT NULL, mientras que descripcion puede quedar sin valor. Se estableció una restricción CHECK sobre precioActual para garantizar que no se ingresen precios negativos.

## 5. VARIANTE
idVariante se definió como clave primaria para identificar cada variante de forma única. El atributo codProducto se definió como clave foránea, garantizando que cada variante esté asociada a un producto existente. Además, talle, color, stock y codProducto se definieron como obligatorios mediante NOT NULL. Se estableció una restricción CHECK sobre stock para garantizar que no se ingresen valores negativos y una restricción UNIQUE sobre la combinación de codProducto, talle y color para evitar variantes duplicadas para un mismo producto.


## 6. VENTA
idVenta se definió como clave primaria para identificar cada venta de forma única. Los atributos idCliente e idMetodoPago se definieron como claves foráneas, garantizando que cada venta esté asociada a un cliente y a un método de pago existentes. Además, fecha, idCliente e idMetodoPago se definieron como obligatorios mediante NOT NULL.

## 7. DETALLE_VENTA
idDetalle se definió como clave primaria para identificar cada detalle de venta de forma única. Los atributos idVenta e idVariante se definieron como claves foráneas, garantizando que cada detalle esté asociado a una venta y a una variante de producto existentes. Además, cantidad, precioUnitario, idVenta e idVariante se definieron como obligatorios mediante NOT NULL. Se establecieron restricciones CHECK sobre cantidad y precioUnitario para garantizar que ambos valores sean mayores que cero.
