
### Primera Forma Normal (1FN)
Para cumplir con la 1FN, nos aseguramos de que todos los atributos sean atómicos y no haya grupos repetitivos. Por ejemplo, en vez de guardar un listado de talles y colores adentro de la tabla Producto, decidimos separarlo y crear la entidad **VARIANTE**. De esta forma, cada registro de stock es único para una combinación de producto, talle y color.

### Segunda Forma Normal (2FN)
El esquema se encuentra en 2FN porque todas nuestras tablas tienen claves primarias simples (identificadores únicos como idProducto o idVenta), o atributos que dependen completamente de su clave. Como no usamos claves primarias compuestas, evitamos el problema de tener dependencias parciales.

### Tercera Forma Normal (3FN)
Llegamos a la 3FN porque verificamos que no existan dependencias transitivas (es decir, ningún atributo no clave depende de otro que tampoco es clave). 
Un detalle importante de nuestro diseño es el precioUnitario en *DETALLE_VENTA*. Aunque parezca repetido, no depende de la tabla PRODUCTO, sino que lo guardamos para congelar el precio al momento exacto de la venta. Así, si el producto aumenta de precio a futuro, el historial de las ventas viejas no se rompe.
