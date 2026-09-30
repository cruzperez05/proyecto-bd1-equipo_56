# Documentación de Implementación

## 1. CLIENTE


## 2. METODO_PAGO


## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE
La tabla Variante se implementó con idVariante como clave primaria, permitiendo identificar de manera única cada variante de un producto. Además, incluye los atributos talle, color y stock, que permiten registrar las características y la cantidad disponible de cada variante. También incluye la clave foránea codProducto, que relaciona cada variante con el producto al que pertenece.


## 6. VENTA
La tabla Venta se implementó con idVenta como clave primaria y fecha como dato obligatorio. Además, incluye las claves foráneas idCliente y idMetodoPago, que permiten relacionar cada venta con el cliente que la realizó y con el método de pago utilizado.

## 7. DETALLE_VENTA

