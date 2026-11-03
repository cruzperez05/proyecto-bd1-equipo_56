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



