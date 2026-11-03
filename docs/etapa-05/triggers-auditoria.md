# Triggers - Etapa V

## 1. Definición y objetivo
Un trigger o disparador es un objeto de la base de datos que ejecuta automáticamente un conjunto de instrucciones SQL cuando ocurre un determinado evento sobre una tabla o vista.

En SQL Server, los triggers permiten detectar operaciones como:
- INSERT: inserción de nuevos registros.
- UPDATE: modificación de registros existentes.
- DELETE: eliminación de registros.
Los triggers de auditoría son aquellos que se utilizan para registrar y conservar información sobre las operaciones realizadas en una base de datos.

Su principal objetivo es mantener un historial de los cambios realizados, permitiendo conocer qué información fue modificada, cuándo ocurrió el cambio y qué usuario ejecutó la operación.

En el sistema de gestión para el local de indumentaria, estos triggers permitirán llevar un control de las modificaciones realizadas sobre productos, variantes y ventas, conservando información que podría perderse si los registros originales son modificados o eliminados.

Por ejemplo, si el precio de una remera cambia de $18.000 a $22.000, el sistema podrá guardar ambos valores para consultar posteriormente cuál era el precio anterior y cuál es el nuevo.


## 2. Ventajas y aplicaciones

La implementación de triggers de auditoría ofrece diferentes ventajas para la administración de una base de datos.
Ventajas
- Trazabilidad: permite conocer qué modificaciones se realizaron sobre los registros.
- Control de cambios: conserva los valores anteriores y nuevos de los datos modificados.
- Registro automático: no requiere que el usuario ejecute manualmente una consulta para registrar cada modificación.
- Historial de operaciones: permite consultar operaciones de inserción, actualización y eliminación.
- Mayor control de la información: facilita detectar modificaciones inesperadas o errores en los datos.
- Soporte para revisiones: proporciona información útil cuando se necesita investigar cómo se modificó un registro.

Aplicaciones en el sistema
En nuestro sistema de ventas, los triggers de auditoría podrían utilizarse en diferentes situaciones:

| Tabla | Aplicación de la auditoría|
|-----|-----------|
| Producto| Registrar cambios en nombres, descripciones y precios. |
| Variante| Registrar modificaciones en el stock, talle y color.|
| Venta| Registrar inserciones, modificaciones y eliminaciones de ventas.|
| Detalle_Venta| Registrar cambios en cantidades y precios unitarios.|
| Cliente| Registrar modificaciones en los datos de contacto.|

	

De esta manera, el sistema puede mantener un historial de las operaciones importantes sin depender de que los usuarios registren los cambios manualmente.

## 3. Implementación en SQL Server
