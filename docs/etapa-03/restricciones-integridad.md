# Restricciones de Integridad 

## 1. CLIENTE

## 2. METODO_PAGO


## 3. CATEGORIA


## 4. PRODUCTO


## 5. VARIANTE


## 6. VENTA
idVenta se definió como clave primaria para identificar cada venta de forma única. Los atributos idCliente e idMetodoPago se definieron como claves foráneas, garantizando que cada venta esté asociada a un cliente y a un método de pago existentes. Además, fecha, idCliente e idMetodoPago se definieron como obligatorios mediante NOT NULL.

## 7. DETALLE_VENTA

