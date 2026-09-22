# Decisiones de diseño

Durante la transformación del modelo Entidad-Relación al modelo relacional se tomaron las siguientes decisiones de diseño:

•	Separación entre Producto y Variante: se decidió mantener Producto y Variante como relaciones independientes. Esto permite que un mismo producto tenga diferentes combinaciones de talle y color, identificadas mediante idVariante. 

•	Stock asociado a Variante: se decidió almacenar el atributo stock en Variante, ya que la disponibilidad de una prenda puede ser diferente según el talle y color.

•	Separación entre Venta y Detalle_Venta: se decidió representar la información general de una venta en Venta y los productos incluidos en la operación en Detalle_Venta. De esta manera, una venta puede contener varios detalles sin repetir los datos generales de la venta.

•	Relación entre Detalle_Venta y Variante: se decidió relacionar Detalle_Venta con Variante para poder identificar exactamente qué variante del producto fue incluida en cada venta.

•	Conservación del precio histórico: se decidió mantener precioUnitario dentro de Detalle_Venta además del precioActual de Producto. Esto permite conservar el precio utilizado en el momento de realizar la venta, evitando que una modificación posterior del precio actual afecte los registros de ventas anteriores. 

•	Categoría como relación independiente: se decidió mantener Categoria como una relación separada de Producto. Producto referencia a Categoria mediante idCategoria, evitando repetir el nombre de la categoría en cada producto. 

•	Método de pago como relación independiente: se decidió crear la relación Metodo_Pago y utilizar idMetodoPago como clave foránea en Venta. Esto permite registrar el método de pago correspondiente a cada venta sin repetir los datos del método. 

•	Cliente como relación independiente: se decidió mantener Cliente como una relación independiente y utilizar idCliente como clave foránea en Venta. Además, esta clave puede admitir valores nulos, ya que el modelo contempla que una venta pueda realizarse sin estar asociada a un cliente. 

•	Uso de claves primarias y foráneas: se asignó una clave primaria a cada relación para identificar sus registros de forma única y se utilizaron claves foráneas para 

• Identificación de las variantes usando clave propia: se decidió utilizar idVariante como clave primaria de Variante, esto permite identificar cada variante de manera simple y facilita su referencia desde Detalle_Venta.

• Identificación de los detalles de venta: se decidió utilizar idDetalle como clave primaria de Detalle_Venta. De esta forma, cada línea de una venta puede identificarse individualmente .

• Registro de la fecha de la venta:se decidio almacenar fecha en Venta, ya que corresponde a la operación completa. De esta manera, todos los detalles pertenecientes a una misma venta comparten la misma fecha.

• Cantidad almacenada en Detalle_Venta: se decidió almacenar cantidad en Detalle_Venta debido a que representa cuántas unidades de una determinada variante se vendieron en una operación. Una misma variante puede aparecer en diferentes ventas con cantidades diferentes.

• Tipos de métodos de pago: Se decidió mantener los métodos de pago como registros independientes en Metodo_Pago, permitiendo reutilizar los mismos métodos en diferentes ventas y evitando almacenar repetidamente valores como "Efectivo", "Tarjeta", "Debito" o "Mercado Pago".
