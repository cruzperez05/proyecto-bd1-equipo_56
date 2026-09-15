# Decisiones de diseño
Decisiones de diseño
Durante la transformación del modelo Entidad-Relación al modelo relacional se tomaron las siguientes decisiones de diseño:
•	Separación entre Producto y Variante: se decidió mantener Producto y Variante como relaciones independientes. Esto permite que un mismo producto tenga diferentes combinaciones de talle y color, identificadas mediante idVariante. 
•	Stock asociado a Variante: se decidió almacenar el atributo stock en Variante, ya que la disponibilidad de una prenda puede ser diferente según el talle y color. 
•	Separación entre Venta y Detalle_Venta: se decidió representar la información general de una venta en Venta y los productos incluidos en la operación en Detalle_Venta. De esta manera, una venta puede contener varios detalles sin repetir los datos generales de la venta. 
•	Relación entre Detalle_Venta y Variante: se decidió relacionar Detalle_Venta con Variante para poder identificar exactamente qué variante del producto fue incluida en cada venta.
