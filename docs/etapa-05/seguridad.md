# Seguridad - Etapa V

## 1. Definición y objetivo

La seguridad en bases de datos consiste en controlar quién puede acceder a la información y qué operaciones puede realizar sobre ella. SQL Server permite administrar los permisos de manera individual mediante usuarios o de forma grupal mediante roles.

Su objetivo es proteger los datos frente a accesos no autorizados, modificaciones indebidas y eliminaciones accidentales, aplicando el principio de mínimo privilegio, que consiste en otorgar a cada usuario únicamente los permisos necesarios para realizar sus tareas.

## 2. Ventajas y aplicaciones

La implementación de mecanismos de seguridad permite proteger la información de clientes, productos y ventas, evitar modificaciones no autorizadas y asignar permisos según las responsabilidades de cada usuario. Además, el uso de roles facilita la administración de los accesos y contribuye a mantener la base de datos segura y organizada.

En nuestro sistema de gestión de ventas de indumentaria, estos mecanismos permiten que un usuario encargado de consultar productos pueda visualizar la información sin tener autorización para modificarla directamente.

## 3. Implementación en SQL Server

Se utilizaron las siguientes instrucciones:

- `CREATE LOGIN`: crea un inicio de sesión en el servidor.
- `CREATE USER`: crea un usuario dentro de la base de datos asociado a un inicio de sesión.
- `CREATE ROLE`: crea un rol para agrupar usuarios con permisos similares.
- `GRANT`: otorga permisos para realizar determinadas operaciones.
- `ALTER ROLE ... ADD MEMBER`: incorpora un usuario a un rol.

La implementación se encuentra en el archivo `scripts.sql`. Se creó el rol `rol_consulta_productos`, al que se le otorgó permiso de lectura sobre la tabla `Producto`. Luego, se incorporó un usuario de prueba a dicho rol para controlar el acceso a la información.

## 4. Caso aplicado al sistema

Se aplicó el mecanismo de seguridad sobre la tabla `Producto` del sistema de gestión de ventas de indumentaria.

Se realizaron dos pruebas:

- **Usuario autorizado:** se asignó al usuario el rol `rol_consulta_productos`, que le permite consultar los productos registrados.
- **Usuario sin permisos:** se utilizó un usuario que no posee autorización para consultar la tabla `Producto`.

De esta manera, se comprobó cómo los permisos permiten controlar el acceso a la información según el rol de cada usuario.

## 5. Demostración y resultados

### Prueba exitosa - Usuario autorizado

Se ejecutó la consulta `SELECT * FROM dbo.Producto;` con un usuario que pertenece al rol `rol_consulta_productos`.

**Resultado esperado:** la consulta se ejecuta correctamente y muestra los productos registrados en la base de datos.

### Prueba fallida - Usuario sin permisos

Se ejecutó la misma consulta con un usuario que no tiene permisos de lectura sobre la tabla `Producto`.

**Resultado esperado:** SQL Server rechaza la consulta e informa que el usuario no tiene permisos para acceder a la tabla.

Estas pruebas permiten demostrar que los permisos asignados en SQL Server controlan el acceso a los datos y contribuyen a proteger la información del sistema.
