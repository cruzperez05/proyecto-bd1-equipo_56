# Documentación de Implementación

## 1. CLIENTE


## 2. METODO_PAGO


## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE


## 6. VENTA
La tabla Venta se implementó con idVenta como clave primaria y fecha como dato obligatorio. Además, incluye las claves foráneas idCliente y idMetodoPago, que permiten relacionar cada venta con el cliente que la realizó y con el método de pago utilizado.
Estas relaciones permiten mantener la integridad referencial entre las tablas.

## 7. DETALLE_VENTA

