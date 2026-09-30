# Documentación de Implementación

## 1. CLIENTE
Se define para almacenar la información de los clientes. Contiene un identificador único idCliente, datos personales básicos como nombre, apellido y DNI, y tambiendatos de contacto como el teléfono y el correo electrónico.

## 2. METODO_PAGO
Tabla encargada de registrar los distintos medios de pago aceptados, por ejemplo, efectivo, tarjetas, billeteras virtuales, etc. Cuenta con un identificador único idMetodoPago y una descripción nombre para identificar cada una.

## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE
La tabla Variante se implementó con idVariante como clave primaria, permitiendo identificar de manera única cada variante de un producto. Además, incluye los atributos talle, color y stock, que permiten registrar las características y la cantidad disponible de cada variante. También incluye la clave foránea codProducto, que relaciona cada variante con el producto al que pertenece.


## 6. VENTA
La tabla Venta se implementó con idVenta como clave primaria y fecha como dato obligatorio. Además, incluye las claves foráneas idCliente y idMetodoPago, que permiten relacionar cada venta con el cliente que la realizó y con el método de pago utilizado.

## 7. DETALLE_VENTA
La tabla Detalle_Venta se implementó con idDetalle como clave primaria, permitiendo identificar de manera única cada detalle de una venta. Además, incluye los atributos cantidad y precioUnitario, que permiten registrar la cantidad de unidades vendidas y el precio correspondiente al momento de realizar la venta. También incluye las claves foráneas idVenta e idVariante, que relacionan cada detalle con la venta y con la variante de producto correspondiente.
