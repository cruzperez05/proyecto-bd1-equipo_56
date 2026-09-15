
### Primera Forma Normal (1FN)
Para cumplir con la 1FN, nos aseguramos de que todos los atributos sean atómicos y no haya grupos repetitivos. Por ejemplo, en vez de guardar un listado de talles y colores adentro de la tabla Producto, decidimos separarlo y crear la entidad **VARIANTE**. De esta forma, cada registro de stock es único para una combinación de producto, talle y color.

### Segunda Forma Normal (2FN)
El esquema se encuentra en 2FN porque todas nuestras tablas tienen claves primarias simples (identificadores únicos como idProducto o idVenta), o atributos que dependen completamente de su clave. Como no usamos claves primarias compuestas, evitamos el problema de tener dependencias parciales.
