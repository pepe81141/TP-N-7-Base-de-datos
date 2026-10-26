Sistema de Gestión de Gimnasio

1. Descripción del proyecto

Este proyecto consiste en una base de datos relacional creada para administrar las operaciones diarias de un gimnasio. Organiza la información en tablas dedicadas a clientes, membresías, pagos, instructores, clases, rutinas y ejercicios.

La base de datos se llama gimnasio_db y permite relacionar la información para realizar consultas y llevar un mejor control de las actividades del gimnasio.

2. Justificación

Debido a un aumento repentino de socios, el registro tradicional en libretas de papel dejó de ser práctico. Se necesitaban demasiados minutos para buscar la ficha de una persona o revisar quién había pagado.

La base de datos resuelve este problema al pasar la información a un sistema digital estructurado, que permite realizar consultas de forma más rápida y mantener los datos organizados.

3. Objetivos

Reemplazar los registros en papel por una base de datos centralizada.

Mantener organizada la información de socios, pagos y rutinas.

Reducir el tiempo necesario para consultar o modificar la información del gimnasio.

Facilitar el seguimiento de las membresías y la recaudación.

Mejorar la organización de las clases, los instructores y los ejercicios.

4. Beneficios

Permite buscar rápidamente los datos de cualquier cliente, sus horarios y su rutina de entrenamiento.

Facilita el control de las cuotas al día, los pagos del mes y el tipo de plan contratado.

Ayuda a gestionar la disponibilidad de los instructores ante imprevistos o cambios de turno.

Mejora la atención a los clientes y agiliza el trabajo diario en la recepción.

Permite obtener información resumida mediante consultas SQL.

5. Funcionalidades principales

El sistema permite:

Administrar clientes: consultar los socios registrados y ordenar sus datos alfabéticamente.

Controlar membresías: identificar las membresías vigentes y las próximas a vencer.

Consultar pagos: calcular cuánto pagó cada cliente y cuánto dinero se recibió por cada método de pago.

Controlar la recaudación: consultar los ingresos agrupados por mes.

Organizar clases e instructores: consultar las clases ofrecidas y los instructores responsables.

Administrar rutinas y ejercicios: relacionar las rutinas con los clientes, los instructores y los ejercicios correspondientes.

6. Estructura de la base de datos

La base de datos contiene las siguientes tablas:

cliente: almacena la información de los clientes.

membresia: registra los planes contratados, sus precios y sus fechas.

pago: almacena los pagos realizados.

instructor: contiene los datos de los instructores.

clase: registra las clases, sus horarios y su capacidad.

rutina: contiene las rutinas asignadas a los clientes.

ejercicio: almacena los ejercicios disponibles.

rutina_ejercicio: relaciona las rutinas con los ejercicios que incluyen.

Las relaciones entre las tablas permiten consultar información vinculada sin tener que guardar todos los datos en una sola tabla. Para establecer estas relaciones se utilizan claves primarias y foráneas.

7. Consultas SQL del TP N.º 8

El archivo consultas.sql contiene diez consultas destinadas a obtener información útil para la administración del gimnasio.

Listar todos los clientes registrados, ordenados alfabéticamente.

Consultar qué clientes tienen una membresía vigente.

Identificar las membresías que vencen dentro de los próximos 30 días.

Calcular el total pagado por cada cliente.

Consultar cuánto dinero se recibió por cada método de pago.

Calcular la recaudación total de cada mes.

Consultar las clases disponibles y sus instructores.

Identificar las rutinas asignadas a cada cliente y quién las preparó.

Consultar los ejercicios incluidos en cada rutina.

Calcular la cantidad de membresías y el precio promedio por tipo.

Estas consultas utilizan herramientas de SQL como SELECT, WHERE, ORDER BY, INNER JOIN, LEFT JOIN, GROUP BY, COUNT, SUM y AVG, entre otras.

8. Archivos del proyecto

README.md: documentación del proyecto, sus objetivos y las instrucciones de uso.

gimnasio.sql: archivo para crear la base de datos, las tablas y los datos necesarios, según su contenido.

consultas.sql: archivo con las diez consultas SQL del trabajo práctico.

9. Cómo ejecutar el proyecto

Para trabajar con la base de datos se puede utilizar phpMyAdmin.

Abrir phpMyAdmin desde el entorno local que se esté utilizando.

Importar o ejecutar el archivo gimnasio.sql para crear la base de datos y sus tablas.

Verificar que se haya creado la base de datos gimnasio_db.

Abrir el archivo consultas.sql.

Ejecutar las consultas para visualizar los resultados.

Revisar los resultados para comprobar que la información se muestra correctamente.

El archivo consultas.sql debe ejecutarse después de crear la base de datos y sus tablas, ya que comienza seleccionando gimnasio_db.

10. Herramientas utilizadas

MySQL: para crear y consultar la base de datos.

phpMyAdmin: para administrar la base de datos desde una interfaz gráfica y ejecutar consultas SQL.

Git y GitHub: para controlar las versiones y guardar o compartir los archivos del proyecto, si se utilizan en la entrega.

11. Declaración de uso de IA

Herramienta: Gemini.

Propósito: estructurar la base de datos y redactar el README.

Prompt utilizado:

"me podrias ayudar a hacer este trabajo, usando como base de datos el del gym,ademas quiero que me expliques como usar phpMyAdmin y git, todo esto dejando espacio para que aprenda a hacerlo yo"

Ajuste o edición: cambié algunos de los códigos que me recomendó porque no los conocía o los veía innecesarios.

Aprendizaje: aprendí a vincular tablas con llaves primarias y foráneas, y a organizar los entregables de un proyecto.

La herramienta de IA se utilizó como apoyo durante el desarrollo. Las modificaciones realizadas y el aprendizaje obtenido forman parte del proceso de elaboración del trabajo.
