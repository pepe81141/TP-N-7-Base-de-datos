-- TP N.º 8 - Consultas SQL
-- Proyecto: Sistema de Gestión de Gimnasio
-- Base de datos: gimnasio_db
-- Ejecutar después de crear la base de datos y sus tablas con gimnasio.sql.

USE gimnasio_db;

-- 1. ¿Cuáles son todos los clientes registrados, ordenados alfabéticamente?
SELECT id_cliente, dni, nombre, apellido, telefono
FROM cliente
ORDER BY apellido ASC, nombre ASC;

-- 2. ¿Qué clientes tienen una membresía vigente en la fecha actual?
SELECT
    c.id_cliente,
    c.nombre,
    c.apellido,
    m.tipo AS tipo_membresia,
    m.fecha_inicio,
    m.fecha_fin
FROM cliente AS c
INNER JOIN membresia AS m ON c.id_cliente = m.id_cliente
WHERE m.fecha_inicio <= CURDATE()
  AND m.fecha_fin >= CURDATE()
ORDER BY m.fecha_fin ASC;

-- 3. ¿Qué membresías vencen dentro de los próximos 30 días?
SELECT
    c.nombre,
    c.apellido,
    m.tipo AS tipo_membresia,
    m.fecha_fin
FROM cliente AS c
INNER JOIN membresia AS m ON c.id_cliente = m.id_cliente
WHERE m.fecha_fin BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY)
ORDER BY m.fecha_fin ASC;

-- 4. ¿Cuánto dinero pagó cada cliente en total?
SELECT
    c.id_cliente,
    c.nombre,
    c.apellido,
    COALESCE(SUM(p.monto), 0) AS total_pagado
FROM cliente AS c
LEFT JOIN pago AS p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nombre, c.apellido
ORDER BY total_pagado DESC;

-- 5. ¿Cuánto dinero se recibió por cada método de pago?
SELECT
    metodo_pago,
    COUNT(*) AS cantidad_pagos,
    SUM(monto) AS total_recaudado
FROM pago
GROUP BY metodo_pago
ORDER BY total_recaudado DESC;

-- 6. ¿Cuál fue la recaudación total de cada mes?
SELECT
    YEAR(fecha) AS anio,
    MONTH(fecha) AS mes,
    COUNT(*) AS cantidad_pagos,
    SUM(monto) AS total_recaudado
FROM pago
GROUP BY YEAR(fecha), MONTH(fecha)
ORDER BY anio ASC, mes ASC;

-- 7. ¿Qué clases ofrece el gimnasio y qué instructor está a cargo de cada una?
SELECT
    cl.id_clase,
    cl.nombre AS clase,
    cl.capacidad,
    cl.horario,
    i.nombre AS instructor,
    i.especialidad
FROM clase AS cl
INNER JOIN instructor AS i ON cl.id_instructor = i.id_instructor
ORDER BY cl.horario ASC;

-- 8. ¿Qué rutinas tiene asignadas cada cliente y qué instructor las preparó?
SELECT
    c.nombre AS cliente,
    c.apellido,
    r.tipo AS tipo_rutina,
    r.descripcion,
    i.nombre AS instructor
FROM rutina AS r
INNER JOIN cliente AS c ON r.id_cliente = c.id_cliente
INNER JOIN instructor AS i ON r.id_instructor = i.id_instructor
ORDER BY c.apellido ASC, c.nombre ASC, r.tipo ASC;

-- 9. ¿Qué ejercicios están incluidos en cada rutina?
SELECT
    r.id_rutina,
    r.tipo AS tipo_rutina,
    e.nombre AS ejercicio,
    e.duracion
FROM rutina AS r
INNER JOIN rutina_ejercicio AS re ON r.id_rutina = re.id_rutina
INNER JOIN ejercicio AS e ON re.id_ejercicio = e.id_ejercicio
ORDER BY r.id_rutina ASC, e.nombre ASC;

-- 10. ¿Cuál es el precio promedio y cuántas membresías hay registradas por tipo?
SELECT
    tipo,
    COUNT(*) AS cantidad_membresias,
    AVG(precio) AS precio_promedio
FROM membresia
GROUP BY tipo
ORDER BY precio_promedio DESC;
