## 1. Definición y Objetivo
* **Procedimientos Almacenados (Stored Procedures):** Son bloques de código T-SQL compilados y almacenados en el servidor que permiten ejecutar múltiples operaciones de manipulación de datos.
* **Funciones Almacenadas (Functions):** Son rutinas programadas que reciben parámetros de entrada y devuelven un valor único (escalar) o una tabla, integrándose de forma directa en las consultas SQL
* **Objetivo:** Centralizar la lógica de negocio en el motor de base de datos para garantizar la consistencia, evitar código repetido en las aplicaciones cliente y estructurar operaciones complejas

## 2. Ventajas y Aplicaciones
* **Reutilización y modularidad:** Permiten encapsular rutinas que se ejecutan frecuentemente, reduciendo la redundancia de código
* **Mantenibilidad:** Facilitan la actualización de las reglas operativas desde el servidor sin modificar los sistemas externos
* **Seguridad:** Ayudan a proteger la integridad de los datos permitiendo que los usuarios ejecuten acciones controladas sin acceso directo a las tablas base
* **Rendimiento:** Al estar almacenados de forma nativa en SQL Server Express, optimizan el procesamiento transaccional

## 3. Implementación en SQL Server Express
La implementación técnica se estructuró en dos scripts independientes ubicados en la carpeta técnica del repositorio:
* `sql/tecnico/procedimientos.sql`: Contiene los procedimientos orientados a operaciones CRUD y tareas operativas.
* `sql/tecnico/funciones.sql`: Contiene la función escalar diseñada para cálculos dinámicos

## 4. Caso Concreto Aplicado al Sistema de Indumentaria
* **Función (`fn_CalcularTotalVenta`):** Resuelve la necesidad de calcular de manera dinámica el importe total de una transacción específica a partir de los registros de la tabla de detalles, evitando errores de cálculo manual.
* **Procedimientos (`sp_InsertarCliente` y `sp_ActualizarPrecioProducto`):** Automatizan de forma segura el alta de nuevos clientes y la modificación de precios de las prendas sin alterar el historial comercial.

## 5. Script de Demostración y Resultados Obtenidos
```sql
-- Demostración de llamada a la función almacenada dentro de una consulta
SELECT 
    id_venta, 
    fecha, 
    dbo.fn_CalcularTotalVenta(id_venta) AS TotalGeneral 
FROM Venta;

