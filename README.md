<div align="center">

<h1>👕 Proyecto Base de Datos I - Equipo 56</h1>

<h2>🛍️ Sistema de Gestión para Local de Indumentaria</h2>

</div>

## 👥 Integrantes: 
- Alfaro, Lucas Rodrigo 
- Berton, Agustín Matías 
- Rudas, Emilia Catalina 
- Alderete, Enzo Damián 
- Pérez Rollheiser, Cruz Benjamín

## 📌 Presentacion y contexto:
Este proyecto se desarrolla en el marco de la asignatura **Bases de Datos I**, correspondiente a la Licenciatura en Sistemas de Información de la Facultad de Ciencias Exactas y Naturales y Agrimensura (FaCENA), Universidad Nacional del Nordeste (UNNE).

El proyecto consiste en el diseño e implementación de una base de datos para un local de indumentaria, con el propósito de organizar y gestionar la información relacionada con los productos, clientes, ventas y métodos de pago.

La propuesta surge de la necesidad de sustituir los registros realizados de forma manual por una herramienta que permita administrar la información del negocio de manera más sencilla, práctica y eficiente.

El desarrollo se organiza en distintas etapas, comenzando con el análisis de requerimientos y el diseño conceptual, continuando con la implementación de la base de datos y finalizando con consultas SQL orientadas a obtener información útil para el negocio.

## ❗ Problemática:
En un local de indumentaria se manejan diferentes tipos de información, como los productos disponibles, sus respectivos talles y colores, las cantidades en stock y las operaciones de venta.

Cuando estos datos se registran manualmente, pueden presentarse dificultades para mantener la información organizada, controlar las existencias y consultar las ventas realizadas anteriormente.

Por este motivo, se plantea la necesidad de implementar una base de datos que permita centralizar la información, disminuir posibles errores en los registros y facilitar las actividades cotidianas del local.

## 🎯 Alcance del sistema  
El sistema está orientado a cubrir las principales necesidades de gestión de un local de indumentaria.

Las funcionalidades contempladas en el alcance son:

- **Gestión de productos:** permite registrar prendas con su código, nombre, descripción, categoría y precio actual.
- **Gestión de variantes:** permite identificar las diferentes combinaciones de talle y color disponibles para cada producto.
- **Control de stock:** permite registrar la cantidad disponible de cada variante de producto.
- **Registro de clientes:** permite almacenar datos personales y de contacto, facilitando la consulta de compras anteriores.
- **Registro de ventas:** permite almacenar las operaciones realizadas en el mostrador, incluyendo su identificador y fecha.
- **Detalle de ventas:** permite registrar los productos vendidos, sus variantes, cantidades y precios unitarios.
- **Métodos de pago:** permite registrar el medio de pago utilizado en cada operación.
- **Historial de ventas:** permite conservar la información de las operaciones realizadas, incluyendo el precio que tenía cada producto al momento de la venta.

El proyecto se centra en el diseño, implementación y consulta de la base de datos mediante SQL Server.

## ✅ Objetivos generales

### Objetivo principal:

Diseñar e implementar una base de datos relacional que permita organizar y administrar la información de un local de indumentaria, reemplazando los registros manuales y facilitando las operaciones del negocio.

### Objetivos específicos:

- Identificar las necesidades de información del local de indumentaria.
- Definir las entidades, atributos y relaciones que representan el funcionamiento del negocio.
- Elaborar un Diagrama Entidad-Relación (DER) a partir de los requerimientos identificados.
- Diseñar e implementar las tablas correspondientes en SQL Server.
- Establecer claves primarias, claves foráneas y restricciones de integridad.
- Incorporar registros de prueba para verificar el funcionamiento de la base de datos.
- Desarrollar consultas SQL que permitan obtener información sobre ventas, productos y categorías.
- Documentar el proceso de diseño e implementación del proyecto.

## 📋 Reglas de negocio principales:
Las siguientes reglas de negocio fueron establecidas durante la Etapa I del proyecto.

### RN.01 - Registro de productos

Cada producto deberá estar registrado con un código único que permita identificarlo, además de información como nombre, descripción, categoría y precio actual.

### RN.02 - Variantes de los productos

Un producto podrá estar disponible en diferentes talles y colores. Cada combinación de producto, talle y color deberá poder identificarse para llevar un control correcto de su disponibilidad.

### RN.03 - Control de stock

El sistema deberá registrar la cantidad disponible de cada variante de producto, teniendo en cuenta su talle y color.

### RN.04 - Registro de clientes

Los clientes podrán ser registrados en el sistema con sus datos personales y de contacto, permitiendo consultar las compras realizadas anteriormente por cada uno.

### RN.05 - Registro de ventas

Cada venta deberá quedar registrada con un identificador único, la fecha en que fue realizada y los productos incluidos en la operación.

### RN.06 - Detalle de la venta

Una venta podrá contener uno o varios productos. Por cada producto vendido se deberá registrar la variante seleccionada, la cantidad y el precio unitario correspondiente.

### RN.07 - Métodos de pago

Cada venta deberá registrar el método de pago utilizado, como efectivo, tarjeta de débito, tarjeta de crédito o transferencia.

### RN.08 - Precio al momento de la venta

El precio unitario de cada producto deberá quedar registrado en el detalle de la venta según el valor que tenía al momento de realizarse.

Si posteriormente se modifica el precio del producto, este cambio no deberá afectar a las ventas realizadas anteriormente.

## Estructura del repositorio:
```text
🛍️ proyecto-bd1-equipo_56/
├── 📁docs/
│   ├── 📁etapa-01/
│   │   └── 📄equipo56_etapa_1.pdf
│   │
│   ├── 📁etapa-02/
│   │   ├── 📁der/
│   │   │   └── 📄Diagrama Entidad-Relacion (DER).png
│   │   ├── 📄decisiones-diseno.md
│   │   ├── 📄modelo-relacional.md
│   │   └── 📄normalización.md
│   │
│   ├── 📁etapa-03/
│   │   ├── 📄implementacion.md
│   │   ├── 📄restricciones-integridad.md
│   │   └── 📄pruebas-validacion.md
│   │
│   ├── 📁etapa-04/
│   │   ├── 📄comprobante-venta.md
│   │   ├── 📄informe-ventas.md
│   │   ├── 📄consulta-avanzada.md
│   │   └── 📄casos-uso.md
│   │ 
│   └── 📁etapa-05/
│   │   ├── 📄indices-optimizacion.md
│   │   ├── 📄procedimientos-funciones.md
│   │   ├── 📄seguridad.md
│   │   ├── 📄transacciones.md
│   │   ├── 📄triggers-auditoria.md
│   │   └── 📁evidencias/
│   │       ├── 📁indices-optimizacion/
│   │       ├── 📁procedimientos-funciones/
│   │       ├── 📁seguridad/
│   │       ├── 📁transacciones/
│   │       └── 📁triggers-auditoria/
│   │ 
├── 📁sql/
│   ├── 📁consultas/
│   │   ├── 📄comprobante_venta.sql
│   │   ├── 📄consulta_avanzada.sql
│   │   └── 📄informe_ventas.sql
│   │   
│   ├── 📁ddl/
│   │   └── 📄crear_hd.sql
│   │   
│   ├── 📁dml/
│   │   └── 📄datos-prueba.sql
│   │   
│   └── 📁tecnico/
│       ├── 📄funciones.sql
│       ├── 📄indices.sql
│       ├── 📄procedimientos.sql
│       ├── 📄seguridad.sql
│       ├── 📄transacciones.sql
│       └── 📄triggers.sql
│      
└── README.md
```
