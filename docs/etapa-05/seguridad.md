# Seguridad - Etapa V

## 1. Definición y objetivo

La seguridad en bases de datos consiste en controlar quién puede acceder a la información y qué operaciones puede realizar sobre ella. SQL Server permite administrar los permisos de manera individual mediante usuarios o de forma grupal mediante roles.

Su objetivo es proteger los datos frente a accesos no autorizados, modificaciones indebidas y eliminaciones accidentales, aplicando el principio de mínimo privilegio, que consiste en otorgar a cada usuario únicamente los permisos necesarios para realizar sus tareas.

## 2. Ventajas y aplicaciones

La implementación de mecanismos de seguridad permite proteger la información de clientes, productos y ventas, evitar modificaciones no autorizadas y asignar permisos según las responsabilidades de cada usuario. Además, el uso de roles facilita la administración de los accesos y contribuye a mantener la base de datos segura y organizada.

En nuestro sistema de gestión de ventas de indumentaria, estos mecanismos permiten que un usuario encargado de consultar productos pueda visualizar la información sin tener autorización para modificarla directamente.

## 3. Implementación en SQL Server

Para implementar la seguridad se utilizaron las siguientes instrucciones:

- `CREATE USER`: crea un usuario dentro de la base de datos.
- `CREATE ROLE`: crea un rol para agrupar usuarios con permisos similares.
- `GRANT`: otorga permisos para realizar determinadas operaciones.
- `ALTER ROLE ... ADD MEMBER`: incorpora un usuario a un rol.
- `EXECUTE AS USER`: permite realizar pruebas utilizando los permisos de un usuario determinado.
- `REVERT`: finaliza la suplantación del usuario y vuelve al contexto anterior.

La implementación se encuentra en el archivo `seguridad.sql`, ubicado en la carpeta `SQL/tecnico` del repositorio.

Se creó el rol `rol_consulta_productos`, al que se le otorgó permiso de lectura sobre la tabla `Producto`. Luego, se incorporó un usuario de prueba a dicho rol y se creó otro usuario sin permisos de consulta.

## 4. Caso aplicado al sistema

Se aplicó el mecanismo de seguridad sobre la tabla `Producto` del sistema de gestión de ventas de indumentaria.

Se definieron dos usuarios de prueba:

- **Usuario autorizado:** `usuario_consulta`, incorporado al rol `rol_consulta_productos`, que le permite consultar los productos registrados.
- **Usuario sin permisos:** `usuario_sin_permiso`, que no posee autorización para consultar la tabla `Producto`.

De esta manera, se establecieron distintos niveles de acceso según los permisos asignados a cada usuario.

## 5. Demostración y resultados

Para comprobar el funcionamiento de los permisos se realizaron dos pruebas.

### 5.1. Prueba exitosa - Usuario autorizado

Se utilizó el usuario `usuario_consulta`, que pertenece al rol `rol_consulta_productos`, y se ejecutó la consulta `SELECT * FROM dbo.Producto;`.

**Resultado esperado:** la consulta se ejecuta correctamente y muestra los productos registrados en la base de datos.

### 5.2. Prueba fallida - Usuario sin permisos

Se utilizó el usuario `usuario_sin_permiso`, que no tiene permisos de lectura sobre la tabla `Producto`, y se intentó ejecutar la misma consulta.

**Resultado esperado:** SQL Server rechaza la consulta e informa que el usuario no tiene permisos para acceder a la tabla.

Estas pruebas permiten demostrar que los permisos asignados en SQL Server controlan el acceso a los datos y contribuyen a proteger la información del sistema.
