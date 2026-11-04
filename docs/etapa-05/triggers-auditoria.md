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

La implementación se realizará siguiendo estos pasos:
 1- Crear la tabla de auditoría
Primero se debe crear una tabla que permita almacenar los cambios realizados sobre los registros originales.

Para este proyecto se utilizará Auditoria_Producto, que almacenará las modificaciones realizadas en la tabla Producto.

CREATE TABLE Auditoria_Producto (
    idAuditoria INT IDENTITY(1,1) PRIMARY KEY,
    codProducto INT NOT NULL,
    operacion VARCHAR(10) NOT NULL,
    fechaHora DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    usuario VARCHAR(100) NOT NULL,
    nombreAnterior VARCHAR(100),
    nombreNuevo VARCHAR(100),
    precioAnterior DECIMAL(10,2),
    precioNuevo DECIMAL(10,2)
);

 2- Crear el trigger de auditoría
Una vez creada la tabla, se implementa el trigger que detectará las operaciones realizadas sobre Producto. (codigo en src)

Explicación del funcionamiento:
- CREATE TRIGGER: permite crear el disparador.
- ON Producto: indica que el trigger estará asociado a la tabla Producto.
- AFTER INSERT, UPDATE, DELETE: establece que se ejecutará después de cualquiera de esas operaciones.
- inserted: tabla virtual que contiene los registros nuevos o modificados.
- deleted: tabla virtual que contiene los registros anteriores o eliminados.
- CASE: permite identificar qué tipo de operación se realizó.
- SUSER_SNAME(): obtiene el nombre del contexto de seguridad de SQL Server que ejecutó la operación.
- FULL OUTER JOIN: permite relacionar los registros anteriores y nuevos para identificar los cambios.
- INSERT INTO Auditoria_Producto: almacena los datos obtenidos en la tabla de auditoría.
Una característica importante es que el trigger puede procesar varias filas en una misma operación, ya que trabaja con conjuntos de registros y no solamente con un registro individual.

## 4. Caso concreto aplicado al sistema de ventas del equipo
Para demostrar la utilidad de los triggers de auditoría, se plantea el siguiente escenario:

Un empleado del local modifica el precio actual de una remera básica porque hubo un aumento en el costo del producto.

Antes de la modificación, el producto tiene los siguientes datos:
|Campo	|Valor|
|-----|-----------|
|Código|	1|
|Nombre	|Remera Básica|
|Precio actual	|18000|

El empleado actualiza el precio a 22000.

Sin un mecanismo de auditoría, la base de datos solamente conservaría el precio nuevo, perdiéndose el valor anterior.

Con el trigger implementado, automáticamente se registra la modificación en Auditoria_Producto.

De esta manera, queda almacenada la siguiente información:
|Dato auditado	|Valor|
|-----|-----------|
|Operación|	UPDATE|
|Código del producto|0001|
|Precio anterior	|18000|
|Precio nuevo	|22000|
|Fecha y hora	|Momento de la modificación|
|Usuario	|Nombre del Usuario|

Esto permite consultar posteriormente los cambios realizados y conocer cómo fue evolucionando el precio del producto.

El mismo mecanismo puede aplicarse a otras tablas del sistema, por ejemplo, para registrar cuándo se incrementó o redujo el stock de una variante de talle y color.

## 5. Script de demostración y resultados obtenidos
Para comprobar el funcionamiento del trigger se realizarán tres pruebas: inserción, modificación y eliminación de un producto.

 1- Insertar un producto
Primero se agrega un producto de prueba.

INSERT INTO Producto (
    codProducto,
    nombre,
    descripcion,
    precioActual,
    idCategoria
)
VALUES (
    100,
    'Remera de prueba',
    'Producto para probar auditoría',
    15000,
    1
);


Al ejecutar esta instrucción, el trigger detecta la inserción y genera automáticamente un registro en Auditoria_Producto.
 2- Modificar el producto
Luego se modifica el precio del producto.
UPDATE Producto
SET precioActual = 20000
WHERE codProducto = 100;


El trigger registra el precio anterior ($15.000) y el nuevo ($20.000).
 3- Eliminar el producto
Finalmente, se elimina el producto de prueba.
DELETE FROM Producto
WHERE codProducto = 100;


El trigger registra la eliminación y conserva los datos anteriores del producto en la tabla de auditoría.
 4- Consultar los registros de auditoría
Para visualizar las operaciones registradas se ejecuta:
SELECT
    idAuditoria,
    codProducto,
    operacion,
    fechaHora,
    usuario,
    nombreAnterior,
    nombreNuevo,
    precioAnterior,
    precioNuevo
FROM Auditoria_Producto
ORDER BY idAuditoria;


 5- Resultados 
Luego de ejecutar las tres operaciones, se obtuvo el historial siguiente:
|ID	|Operación|	Producto|	Precio anterior|	Precio nuevo|
|-----|----|-----|-----|-----|
|1	|INSERT	|Remera de prueba|	NULL	|$15.000|
|2	|UPDATE	|Remera de prueba|$15.000	|$20.000|
|3	|DELETE	|Remera de prueba|	$20.000	|NULL|
